class Bejar

    # Bejar main configurations
    configure do
        set :sessions, true
        set :session_secret, "hello"
    end

    #  Register App Helpers
    helpers Sinatra::User
end
