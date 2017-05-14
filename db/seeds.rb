User.create(username: "user_1", password: "11")
User.create(username: "user_2", password: "22")
User.create(username: "user_3", password: "33")

require 'date'
Booking.create([
{
	time: DateTime.new(2017, 5, 1, 0, 0, 0, '-04:00'),
	user_id: 1,
	court: 1,
	created_at: DateTime.now,
	updated_at: DateTime.now
},{
	time: DateTime.new(2017, 5, 2, 0, 0, 0, '-04:00'),
	user_id: 1,
	court: 1,
	created_at: DateTime.now,
	updated_at: DateTime.now
},{
	time: DateTime.new(2017, 5, 3, 0, 0, 0, '-04:00'),
	user_id: 1,
	court: 1,
	created_at: DateTime.now,
	updated_at: DateTime.now
},{
	time: DateTime.new(2017, 5, 11, 0, 0, 0, '-04:00'),
	user_id: 1,
	court: 1,
	created_at: DateTime.now,
	updated_at: DateTime.now
},{
	time: DateTime.new(2017, 5, 12, 0, 0, 0, '-04:00'),
	user_id: 1,
	court: 1,
	created_at: DateTime.now,
	updated_at: DateTime.now
},{
	time: DateTime.new(2017, 5, 13, 0, 0, 0, '-04:00'),
	user_id: 1,
	court: 1,
	created_at: DateTime.now,
	updated_at: DateTime.now
},{
	time: DateTime.new(2017, 5, 14, 0, 0, 0, '-04:00'),
	user_id: 1,
	court: 1,
	created_at: DateTime.now,
	updated_at: DateTime.now
},{
	time: DateTime.new(2017, 5, 14, 0, 0, 0, '-04:00'),
	user_id: 2,
	court: 2,
	created_at: DateTime.now,
	updated_at: DateTime.now
},{
	time: DateTime.new(2017, 5, 15, 0, 0, 0, '-04:00'),
	user_id: 2,
	court: 1,
	created_at: DateTime.now,
	updated_at: DateTime.now
},{
	time: DateTime.new(2017, 5, 16, 0, 0, 0, '-04:00'),
	user_id: 1,
	court: 1,
	created_at: DateTime.now,
	updated_at: DateTime.now
},{
	time: DateTime.new(2017, 5, 17, 0, 0, 0, '-04:00'),
	user_id: 3,
	court: 1,
	created_at: DateTime.now,
	updated_at: DateTime.now
},{
	time: DateTime.new(2017, 5, 18, 0, 0, 0, '-04:00'),
	user_id: 2,
	court: 1,
	created_at: DateTime.now,
	updated_at: DateTime.now
},{
	time: DateTime.new(2017, 5, 19, 0, 0, 0, '-04:00'),
	user_id: 2,
	court: 1,
	created_at: DateTime.now,
	updated_at: DateTime.now
},{
	time: DateTime.new(2017, 5, 17, 0, 0, 0, '-04:00'),
	user_id: 2,
	court: 2,
	created_at: DateTime.now,
	updated_at: DateTime.now
}])