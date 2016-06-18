class Bejar

    before do
        signin
        @user = User.first(:id => session['user']) if session[:user]
    end

    get "/" do
        haml :'bejar/index'
    end

end

class BejarPublic

    configure do
        enable :sessions
        set :session_secret, "hello"
    end

    before do
        @title = "Bejar"
        @user = User.first(:id => session[:user]) if session[:user]
    end

    get "/signin" do
        haml :'bejar/user/signin'
    end

    post "/signin" do
        @user = User.first(:email => params[:email])

        if @user.password == params[:password]
            @user[:email]
        else
            "user not exists"
        end
    end

    get '/signup' do
        haml :'bejar/user/signup'
    end

    post "/signup" do
        @user = User.create(:email => params[:email], :password => params[:password])
        session[:user] = @user.id
        "you joined successfully"
    end

    get "/signout" do
        session[:user] = nil
        redirect "/"
    end

end
