class BookingController < ApplicationController

	get '/bookings/new' do #create new booking
		if logged_in?
			erb :'/booking/new'
		else
			#flash msg
			redirect '/login'
		end
	end

	post '/bookings' do
		booking = Booking.new() #fix

		if booking.save
			redirect "/bookings/#{booking.id}"
		else
			#flash msg
			redirect '/bookings/new'
		end
	end

	get '/bookings/show' do
		if logged_in?
			erb :'/bookings/show'
		else
			redirect '/users/login'
		end
	end

	get '/bookings/:id' do
		@booking = Booking.find(params[:id])
		if @booking
			erb :'/bookings/show'
		end
	end

	get '/bookings/:id/edit' do
		@booking = Booking.find_by(id: params[:id])
		if @booking && @booking.user.id = session[:id]
			erb :'/bookings/edit'
		else
			"error" #fix
		end
	end

	patch '/bookings/:id' do
		booking = Booking.find(params[:id])

  	if booking.save
  	redirect "/bookings/#{params[:id]}"
  	else
  		#fix
  	end
	end

	delete '/bookings/:id/delete' do
  	booking = Booking.find(params[:id])
  	booking.destroy
  	redirect '/bookings'
  end

end