NOTES
#Description
App is created for a sports booking system. It will allow users to signup and login to the system. Users that are logged in can create bookings for the courts. Bookings can also be created edited 

#Functionalities to be built
CR of users
CRUD of bookings
	-make sure usernames are unique

#Views
-view of individual user's bookings [access: self]
	-link to edit individual booking []
	-link to delete booking

-view of availibilties/bookings [access: all]
	-display format undecided

-sign in/login page [access: all]

#Models
users have attributes of username and password.
bookings has attributes of time, court no. and have timestamps (will start with 1 court and then expand functionality)


The model relationships include:
users has many bookings
bookings belongs to users


#additional functionality ideas
-limit amount of bookings that can be made by each user
-limit amount of times a booking can be altered.
	-new edits-counter attribute for bookings
-display bookings through a calendar format?
-add an admin account that can make changes to everyone's bookings


