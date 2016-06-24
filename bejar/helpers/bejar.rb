require 'sinatra/base'

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

  helpers User
end
