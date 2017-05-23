class BookingController < ApplicationController
	post '/bookings' do
		booking = Booking.new(
			time: DateTime.strptime(params[:time], '%Y-%m-%dT%H:%M:%S%z'),
			user_id: session[:user_id],
			court: params[:court]
			)

		if booking.save
			redirect '/bookings'
		else
			redirect '/bookings/new'
		end
	end

	get '/bookings' do
		if logged_in?
			erb :'/bookings/index'
		else
			redirect '/login'
		end
	end

	get '/bookings/:id/edit' do
		@booking = Booking.find_by(id: params[:id])
		if @booking && session[:user_id] == @booking.user.id && @booking.time > DateTime.now
				erb :'/bookings/edit'
		else
				redirect '/bookings?message=2'
		end
	end

	patch '/bookings/:id' do
		if params[:court_1_time] == 'blank' || params[:court_2_time] == 'blank'
			if params[:court_1_time] != params[:court_2_time]
				@booking = Booking.find(params[:id])
				if params[:court_1_time] != 'blank'
					@booking.time = DateTime.strptime(params[:court_1_time], '%Y-%m-%dT%H:%M:%S%z')
					@booking.court = 1
				else
					@booking.time = DateTime.strptime(params[:court_2_time], '%Y-%m-%dT%H:%M:%S%z')
					@booking.court = 2
				end
				@booking.save
		  	redirect '/bookings'
			else
				#no option selected
				redirect '/bookings?message=4'
			end
		else
			#multiple options selected
			redirect '/bookings?message=3'
		end

	end

	delete '/bookings/:id' do
		if current_user.id == session[:user_id]
	  	booking = Booking.find(params[:id])
	  	booking.destroy
	  	redirect '/bookings'
	  else
	  	redirect '/bookings?message=2'
	  end
  end

end