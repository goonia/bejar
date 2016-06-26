# Bejar app general config
class Bejar
  # Bejar main configurations
  configure do
    set :sessions, true
    set :logging, true
    set :session_secret, 'hello'
  end

  #  Register App Helpers
  helpers Sinatra::User
  helpers Sinatra::Log
end

# BejarPublic App general config
class BejarPublic
  helpers Sinatra::Log
end
