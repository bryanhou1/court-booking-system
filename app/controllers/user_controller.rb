class UserController < ApplicationController

	get '/login' do #login page
		if logged_in?
			redirect '/bookings/show'
		else
			erb :'/users/login'
		end
	end

	get '/signup' do #signup page
		if logged_in?
			redirect '/bookings/show'
		else
			erb :'/users/signup'
		end
	end

	get '/signout' do #signout page
		session.clear
		redirect '/login'
	end

	post  '/users' do #login auth
		user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:id] = user.id
      redirect "/bookings/show"
		else
			#flash msg
			redirect '/signup'
		end

	end

	post  '/users/new' do #sign up auth
		if !params[:username].empty? && !params[:password].empty?
			user= User.create(username: params[:username], password: params[:password])
			redirect "/bookings/show"
		else
			#flash msg
			redirect '/signup'
		end

	end

end

