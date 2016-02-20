require 'open3'

def run_system_command(cmd)
  Open3.popen2e(cmd) do |stdin, stdout_err, wait_thr|

    while line = stdout_err.gets
      $stdout.puts(line)
    end

    exit_status = wait_thr.value
    unless exit_status.success?
      $stdout.puts("the following command failed: #{cmd}")
      exit(1)
    end

  end
end
