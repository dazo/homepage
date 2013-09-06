class LoginController < ApplicationController
  http_basic_authenticate_with name: "darius", password: "secret"

  def index
  end

  def book_it

    puts params

    booking = Booking.new(
      name: params[:name], 
      email: params[:email], 
      number_of_guests: params[:number_of_guests], 
      checkin: params[:checkin], 
      checkout: params[:checkout], 
      booking_message: params[:booking][:message])

    if booking.valid?
      booking.save
      redirect_to root_url
    else
      raise 'Fehlgeschlagen'
    end
  end
  
end