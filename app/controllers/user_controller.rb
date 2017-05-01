class UserController < ApplicationController

	get '/login' do
		"hello"
		# erb :'/login'
	end

	get '/signup' do
		erb :'/signup'
	end
end

