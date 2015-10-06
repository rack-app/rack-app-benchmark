class RackSkeleton

  def call(env)
    ['200', {'Content-Type' => 'text/html'}, ['A barebones rack app.']]
  end

  CUSTOM_ENDPOINT_NUMBER.times do |index|
    define_method("endpoint_#{index}"){}
  end

end