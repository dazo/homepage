class Booking < ActiveRecord::Base
  attr_accessible :booking_message, :checkin, :checkout, :email, :name, :number_of_guests

  validates :checkin, presence: true
  validates :checkout, presence: true
  validates :email, presence: true
  validates :name, presence: true
  validates :number_of_guests, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }


end
