# require "rails"
# require "rails/all"

require 'action_controller/railtie'
# require "action_mailer/railtie"
require 'rails/test_unit/railtie'
# require "sprockets/railtie"

class HelloWorld < Rails::Application
  routes.append do
    ENV['EDA'].to_i.times do |index|
      get '/index' => "hello#{index}#world"
    end

    get '/users/:user_id' => 'hello#world'

    root 'hello#world'
  end

  config.cache_classes = true
  config.eager_load = true
  config.secret_key_base = '49837489qkuweoiuoqwehisuakshdjksadhaisdy78o34y138974xyqp9rmye8yrpiokeuioqwzyoiuxftoyqiuxrhm3iou1hrzmjk'

  [
    Rack::Lock,
    ActionDispatch::Flash,
    Rack::Sendfile,
    ActionDispatch::Static,
    Rack::MethodOverride,
    ActionDispatch::RequestId,
    Rails::Rack::Logger,
    ActionDispatch::ShowExceptions,
    ActionDispatch::DebugExceptions,
    ActionDispatch::RemoteIp,
    ActionDispatch::Callbacks,
    ActionDispatch::Cookies,
    ActionDispatch::Session::CookieStore,
    ActionDispatch::ParamsParser,
    Rack::Head,
    Rack::ConditionalGet,
    Rack::ETag
  ].each do |middleware|
    config.middleware.delete(middleware)
  end
end

ENV['EDA'].to_i.times do |index|
  eval <<-RUBY

class Hello#{index}Controller < ActionController::Base

  def world
    render plain: "hello world rails"
  end

end

RUBY
end

class HelloController < ActionController::Base
  def world
    render plain: 'hello world rails'
  end
end

HelloWorld.initialize!

run HelloWorld
