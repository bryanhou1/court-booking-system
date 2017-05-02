User.create(username: "user_1", password: "11")
User.create(username: "user_2", password: "22")
User.create(username: "user_3", password: "33")


Booking.create(time: Time.local(2017, 5, 1), user_id: 1, court: 1, created_at: Time.now, updated_at: Time.now)
Booking.create(time: Time.local(2017, 5, 2), user_id: 1, court: 1, created_at: Time.now, updated_at: Time.now)
Booking.create(time: Time.local(2017, 5, 3), user_id: 1, court: 1, created_at: Time.now, updated_at: Time.now)
Booking.create(time: Time.local(2017, 5, 4), user_id: 2, court: 1, created_at: Time.now, updated_at: Time.now)
Booking.create(time: Time.local(2017, 5, 5), user_id: 2, court: 1, created_at: Time.now, updated_at: Time.now)
Booking.create(time: Time.local(2017, 5, 6), user_id: 1, court: 1, created_at: Time.now, updated_at: Time.now)
Booking.create(time: Time.local(2017, 5, 7), user_id: 3, court: 1, created_at: Time.now, updated_at: Time.now)
Booking.create(time: Time.local(2017, 5, 8), user_id: 2, court: 1, created_at: Time.now, updated_at: Time.now)