require_relative '../apps/bootstrap'

request_env = {
    'rack.input' => Rack::Lint::InputWrapper.new(StringIO.new("hello world!\n")),
    "GATEWAY_INTERFACE" => "CGI/1.1",
    "PATH_INFO" => "/",
    "QUERY_STRING" => "",
    "REMOTE_ADDR" => "::1",
    "REMOTE_HOST" => "localhost",
    "REQUEST_METHOD" => "GET",
    "REQUEST_URI" => "http://localhost:9292/",
    "SCRIPT_NAME" => "",
    "SERVER_NAME" => "localhost",
    "SERVER_PORT" => "9292",
    "SERVER_PROTOCOL" => "HTTP/1.1",
    "SERVER_SOFTWARE" => "WEBrick/1.3.1 (Ruby/2.1.2/2014-05-08)",
    "HTTP_HOST" => "localhost:9292",
    "HTTP_USER_AGENT" => "curl/7.43.0",
    "HTTP_ACCEPT" => "*/*",
    "HTTP_VERSION" => "HTTP/1.1",
    "REQUEST_PATH" => "/"
}

calc = {
    dumb: [],
    app: [],
    grape: []
}

require 'progressbar'

testing_times = 100000

require 'benchmark'
samples_bar = ProgressBar.new('samples', testing_times)

testing_times.times do


  dump_app_duration = Benchmark.measure { RackSkeleton.call(request_env) }.real
  rack_app_duration = Benchmark.measure { RackApp.call(request_env) }.real
  grape_duration = Benchmark.measure { GrapeApp.call(request_env) }.real

  calc[:dumb] << dump_app_duration
  calc[:app] << rack_app_duration
  calc[:grape] << grape_duration

  samples_bar.inc
end

samples_bar.finish

def avg(array)
  array.reduce(:+).to_f / array.size
end

process_bar = ProgressBar.new('processing', 9)

grape_duration = avg(calc[:grape])
process_bar.inc

dumb_duration = avg(calc[:dumb])
process_bar.inc

rack_app_duration = avg(calc[:app])
process_bar.inc

rack_app_faster_than_grape = grape_duration / rack_app_duration
process_bar.inc

rack_app_grape_diff = grape_duration - rack_app_duration
process_bar.inc

dumb_rack_app_diff = rack_app_duration - dumb_duration
process_bar.inc

dumb_faster_than_rack_app = rack_app_duration / dumb_duration
process_bar.inc

dumb_faster_than_grape = grape_duration / dumb_duration
process_bar.inc

dumb_grape_diff = grape_duration - dumb_duration
process_bar.finish

puts "\n",
     "RackSkeleton avg duration: #{dumb_duration} s",
     "Rack::App avg duration: #{rack_app_duration} s",
     "Grape::API avg duration: #{grape_duration} s",
     "\n\n",
     "Rack::App #{rack_app_faster_than_grape}x faster (#{rack_app_grape_diff} sec) that Grape::API",
     "RackSkeleton #{dumb_faster_than_rack_app}x faster (#{dumb_rack_app_diff} sec) that Rack::App",
     "RackSkeleton #{dumb_faster_than_grape}x faster (#{dumb_grape_diff} sec) than Grape::API", "\n"

