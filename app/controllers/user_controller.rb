class UserController < ApplicationController

	get '/signup' do #signup page
		if logged_in?
			redirect '/bookings'
		else
			erb :'/users/signup'
		end
	end

	post '/users' do #sign up auth
		user = User.new(username: params[:username], password: params[:password])
		if user.save
			session[:user_id] = user.id
			redirect '/bookings'
		else
			redirect "/signup?message=#{user.errors.full_messages.join(', ')+'.'}"if user.errors
		end
	end

	get '/users/:username' do

		if params[:username] == current_user.username
			erb :'/users/show'
		else
			redirect '/bookings?message=2' #unauthorized access
		end
	end
end




	
