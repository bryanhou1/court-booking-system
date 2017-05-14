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
			erb :'/bookings/show'
		else
			redirect '/login'
		end
	end

	get '/bookings/:id/edit' do
		@booking = Booking.find_by(id: params[:id])
		if session[:id] == @booking.user.id && @booking.time > DateTime.now
			if @booking
				erb :'/bookings/edit'
			else
				"error"
			end
		else
			redirect '/bookings'
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
				#no changes made
				redirect '/bookings'
			end
		else
			#multiple options selected
			"error."
		end

	end

	delete '/bookings/:id/delete' do
		if current_user.id == session[:id]
	  	booking = Booking.find(params[:id])
	  	booking.destroy
	  	redirect '/bookings'
	  else
	  	"error"
	  end
  end

end