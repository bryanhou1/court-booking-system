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
		# binding.pry
		booking = Booking.new(
			time: DateTime.strptime(params[:time], '%Y-%m-%dT%H:%M:%S%z'),
			user_id: session[:id],
			court: '1'
			)

		if booking.save
			redirect "/bookings/#{booking.id}" #check
		else
			#flash msg
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

	get '/bookings/:id' do
		@booking = Booking.find(params[:id])
		if @booking
			erb :'/bookings/show' ####check
		else
			
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
		@booking = Booking.find(params[:id])
		@booking.time = DateTime.strptime(params[:time], '%Y-%m-%dT%H:%M:%S%z')
		@booking.court = params[:court] 

  	if @booking.save
  		redirect "/bookings/#{params[:id]}"
  	else
  		"error"
  	end
	end

	delete '/bookings/:id/delete' do
		#check authorization
  	booking = Booking.find(params[:id])
  	booking.destroy
  	redirect '/bookings/show'
  end

end