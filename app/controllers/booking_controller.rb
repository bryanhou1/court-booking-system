class BookingController < ApplicationController

	get '/bookings/new' do
		i
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
		@booking = Booking.find(params[:id])
		if @booking
			erb :'/bookings/show'
	end

	get '/bookings/edit' do
	end

	post '/bookings/:id' do

	end

	delete '/bookings' do
	end
end