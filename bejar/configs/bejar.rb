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
end
