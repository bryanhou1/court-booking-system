class BookingController < ApplicationController

	get '/bookings/new' do #create new booking
		if logged_in?
			erb :'/booking/new'
		else
			redirect '/login'
		end
	end

	post '/bookings' do
		booking = Booking.new(
			time: DateTime.strptime(params[:time], '%Y-%m-%dT%H:%M:%S%z'),
			user_id: session[:id],
			court: '1'
			)
		
		if booking.save
			redirect '/bookings/show'
		else
			redirect '/bookings/new'
		end
	end

	get '/bookings/show' do
		if logged_in?
			erb :'/bookings/show'
		else
			redirect '/login'
		end
	end

	get '/bookings/:id/edit' do
		@booking = Booking.find_by(id: params[:id])
		if session[:id] == @booking.user.id
			if @booking && @booking.user.id = session[:id]
				erb :'/bookings/edit'
			else
				"error"
			end
		else
			redirect '/bookings/show'
		end
	end

	patch '/bookings/:id' do
		@booking = Booking.find(params[:id])
		@booking.time = DateTime.strptime(params[:time], '%Y-%m-%dT%H:%M:%S%z')
		@booking.court = params[:court] 

  	if @booking.save
  		redirect '/bookings/show'
  	else
  		"error"
  	end
	end

	delete '/bookings/:id/delete' do
		if current_user.id == session[:id]
	  	booking = Booking.find(params[:id])
	  	booking.destroy
	  	redirect '/bookings/show'
	  else
	  	"error"
	  end
  end

end