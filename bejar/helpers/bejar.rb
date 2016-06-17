require "sinatra/base"

module Sinatra
  module User
    def signin
      redirect "/user/signin" unless session['user']
    end
  end

  helpers User
end
