class Bejar

  configure do
    set :sessions, true
  end

  helpers Sinatra::User
end
