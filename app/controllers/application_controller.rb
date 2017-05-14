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
      redirect '/bookings/show'
    end
	end

	helpers do
    def redirect_if_not_logged_in
      if !logged_in?
        redirect "/login?error=You have to be logged in to do that"
      end
    end

    def logged_in?
      !!session[:id]
    end

    def current_user
      User.find_by(id: session[:id])
    end

	end

  get '/debug' do
    binding.pry
  end
end