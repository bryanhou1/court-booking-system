class User < ActiveRecord::Base
	has_secure_password
	has_many :bookings
	validates :username, uniqueness: true, presence: true
end

