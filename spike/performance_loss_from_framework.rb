require_relative '../apps/bootstrap'

request_env = {
    "GATEWAY_INTERFACE"=>"CGI/1.1",
    "PATH_INFO"=>"/",
    "QUERY_STRING"=>"",
    "REMOTE_ADDR"=>"::1",
    "REMOTE_HOST"=>"localhost",
    "REQUEST_METHOD"=>"GET",
    "REQUEST_URI"=>"http://localhost:9292/",
    "SCRIPT_NAME"=>"",
    "SERVER_NAME"=>"localhost",
    "SERVER_PORT"=>"9292",
    "SERVER_PROTOCOL"=>"HTTP/1.1",
    "SERVER_SOFTWARE"=>"WEBrick/1.3.1 (Ruby/2.1.2/2014-05-08)",
    "HTTP_HOST"=>"localhost:9292",
    "HTTP_USER_AGENT"=>"curl/7.43.0",
    "HTTP_ACCEPT"=>"*/*",
    "HTTP_VERSION"=>"HTTP/1.1",
    "REQUEST_PATH"=>"/"
}

start = Time.now
RackSkeleton.new.call(request_env)
dump_app_duration = Time.now - start

start = Time.now
RackApp.call(request_env)
rackapp_duration = Time.now - start

start = Time.now
GrapeApp.call(request_env)
grape_duration = Time.now - start

puts "Dump duration with zero if or routing: #{dump_app_duration} s",
     "Rack::App duration with routing lookup: #{rackapp_duration} s",
     "Grape::API duration with routing lookup: #{grape_duration} s"

