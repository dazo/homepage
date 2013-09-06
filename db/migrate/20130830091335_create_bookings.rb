class CreateBookings < ActiveRecord::Migration
  def self.up
    create_table :bookings do |t|
      t.string :name
      t.string :email
      t.integer :number_of_guests
      t.date :checkin
      t.date :checkout
      t.text :booking_message

      t.timestamps
    end
  end

  def self.down
    drop_table :bookings
  end

end
