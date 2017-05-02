class CreateBookings < ActiveRecord::Migration[5.1]
  def change
  	create_table :bookings do |t|
  		t.datetime :time
  		t.integer :user_id
  		t.integer :court

  		t.timestamps
  	end
  end
end
