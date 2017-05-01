class ApplicationController < Sinatra::Base
	configure do
		set :session_secret, "secret"
		enable :sessions

		set :views, Proc.new { File.join(root, "../views/") }
	end

	get '/' do
		erb :index
	end

	helper do
    def redirect_if_not_logged_in
      if !logged_in?
        redirect "/login?error=You have to be logged in to do that"
      end
    end

    def logged_in?
      !!session[:user_id]
    end

    def current_user
      User.find(session[:user_id])
    end

	end


end