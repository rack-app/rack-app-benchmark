require 'open3'
require 'socket'
require 'timeout'
class ServerHandler

  def initialize(folder, webserver: 'webrick')
    @folder = folder
    @app_name = File.basename(folder)
    @pid_file_path = File.join(folder, 'pid')
    @webserver_name = webserver
  end

  def start
    wait_for_port_to_be_realeased
    $stdout.puts("#{@app_name} start server") if $VERBOSE
    server_start_command = "cd #{@folder} && bundle exec rackup -P #{@pid_file_path} -s #{@webserver_name}"
    @in, @out, @thr = Open3.popen2e(server_start_command)
    console_out if $VERBOSE
    Kernel.at_exit { stop }

    wait_for_server_to_be_ready
    $stdout.puts("#{@app_name} server started") if $VERBOSE
  end

  def wait_for_port_to_be_realeased
    Timeout.timeout(5) do
      sleep(0.1) until port_is_open?
    end
  end

  def console_out
    Thread.new do
      while line = @out.gets
        $stdout.print(line)
      end
    end
  end

  def wait_for_server_to_be_ready
    Timeout.timeout(5) do
      sleep(0.1) while port_is_open?
    end
  end

  def port_is_open?
    ip, port = 'localhost', 9292
    begin
      Timeout::timeout(1) do
        begin
          s = TCPServer.new(ip, port)
          s.close
          return true
        rescue Errno::ECONNREFUSED, Errno::EHOSTUNREACH, Errno::EADDRINUSE
          return false
        end
      end
    rescue Timeout::Error
    end
    return false
  end

  def stop
    return if pid.nil?
    Process.kill('KILL', pid)
  rescue Errno::ESRCH
    nil
  ensure
    File.delete(@pid_file_path) if File.exist?(@pid_file_path)
    @in, @out, @thr = nil, nil, nil
    $stdout.puts('server stopped') if $VERBOSE
  end

  def pid
    File.read(@pid_file_path).to_i
  rescue Errno::ENOENT
    nil
  end

end