class SessionsController < ApplicationController

	get '/login' do #login page
		if logged_in?
			redirect '/bookings'
		else
			erb :'/users/login'
		end
	end

	post '/session' do #login auth
		user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect '/bookings'
		else
			redirect "/signup"
		end
	end

	delete '/signout' do #signout page
		session.clear
		redirect '/login'
	end

end