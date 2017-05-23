class ApplicationController < Sinatra::Base
	configure do
		enable :sessions
    set :session_secret, "secret"
		set :views, Proc.new { File.join(root, "../views/") }
	end
  
	get '/' do
    if !logged_in?
		  erb :index
    else
      redirect '/bookings'
    end
	end

	helpers do
    def logged_in?
      !!current_user
    end

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

	end

  get '/debug' do
    binding.pry
  end
  
end