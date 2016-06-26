require 'sinatra/base'
use Rack::Logger

# Sintra module
module Sinatra
  # Check users logins
  module User
    def signup
      redirect '/user/signup' unless session[:user]
    end

    def signin
      redirect '/user/signin' unless session[:user]
    end

    def signout
      redirect '/user/signout'
    end
  end

  # Bejar App logger
  module Log
    def log
      request.logger
    end
  end

  helpers User
  helpers Log
end
