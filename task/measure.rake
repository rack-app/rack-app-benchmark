task :runtime, :endpoint_count, :request_amount do |t, args|
  args.with_defaults(:endpoint_count => 100, :request_amount => 1000)
  endpoint_count = args[:endpoint_count].to_i
  request_amount = args[:request_amount].to_i

end
