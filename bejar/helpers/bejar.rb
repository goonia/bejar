require "sinatra/base"

module Sinatra

  # Check users logins
    module User
        def signin
              redirect "/user/signin" unless session[:user]
        end
    end

    helpers User
end
