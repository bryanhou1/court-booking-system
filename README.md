# court-booking-system


#Description
App is created for a sports booking system. It will allow users to signup and login to the system. Users that are logged in can create bookings for the courts. Bookings can also be created edited 

#Functionalities to be built
Create/Read of users
CRUD of bookings


#Views
-welcome page [access: prelogin]
-sign up [access: prelogin]
-login page [access: prelogin]

-view of individual user's bookings [access: self]
	-page to edit individual booking
	-link to delete booking

-view of availibilties/bookings [access: all users postlogin]



#Models
users have attributes of username and password.
weekly bookings have attributes 


bookings has attributes of time, court no. and have timestamps (with 2 courts)

The model relationships include:
users has many bookings
bookings belongs to users


#Additional functionality ideas
-make sure usernames are unique
-limit amount of bookings that can be made by each user
-limit amount of times a booking can be altered.
	-edits-counter attribute for bookings
-display bookings through a calendar format?
-add an admin account that can make changes to everyone's bookings


