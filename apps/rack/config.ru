class RackSkeleton

  def self.call(env)
    new.call(env)
  end

  def call(env)

    request_path = env['REQUEST_PATH']

    if request_path == '/'
      ['200', {'Content-Type' => 'text/html'}, ['static endpoint']]
    else
      ['404', {}, ['404 Not Found']]
    end

  end

end

run RackSkeleton