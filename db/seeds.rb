User.create(username: "user_1", password: "11")
User.create(username: "user_2", password: "22")
User.create(username: "user_3", password: "33")

require 'date'
time = DateTime.new(2017, 5, 1, 0, 0, 0, '-04:00')
Booking.create([
{
	time: time,
	user_id: 1,
	court: 1
},{
	time: time + 1.day,
	user_id: 1,
	court: 1
},{
	time: time + 9.days,
	user_id: 1,
	court: 1
},{
	time: time + 10.days,
	user_id: 1,
	court: 1
},{
	time: time + 11.days,
	user_id: 1,
	court: 1
},{
	time: time + 12.days,
	user_id: 1,
	court: 1
},{
	time: time + 13.days,
	user_id: 2,
	court: 2
},{
	time: time + 14.days,
	user_id: 2,
	court: 1
},{
	time: time + 15.days,
	user_id: 1,
	court: 1
},{
	time: time + 16.days,
	user_id: 3,
	court: 1
},{
	time: time + 17.days,
	user_id: 2,
	court: 1
},{
	time: time + 18.days,
	user_id: 2,
	court: 1
},{
	time: time + 16.days,
	user_id: 2,
	court: 2
},{
	time: time + 17.days,
	user_id: 3,
	court: 2
}])