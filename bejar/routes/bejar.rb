class Bejar

  before do
    signin
  end

  get "/" do
    haml :'bejar/index'
  end

end

class BejarPublic
  get "/signin" do
    haml :'bejar/user/signin'
  end

  post "/signin" do
    "email :" + params[:email]
  end

  get '/signup' do
    haml :'bejar/user/signup'
  end

  post "/signup" do
    @user = User.create(:email => params[:email], :password => params[:password])

    "you joined successfully"
  end
end
