class BookingController < ApplicationController

	get '/bookings/new' do
		erb :'/booking/new'
	end

	post '/bookings' do
		booking = Booking.new(params)

		if @booking.save
			redirect "/bookings/#{booking.id}"
		else
			#flash msg
			redirect '/bookings/new'
		end
	end

	get '/bookings/:id' do
		
	end

	get '/bookings/edit' do
	end

	post '/bookings/:id' do

	end

	delete '/bookings' do
	end
end