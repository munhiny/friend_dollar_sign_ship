class BookingsController < ApplicationController
  def new
    @friend = Friend.find(params[:friend_id])
    @friend_user = User.find(@friend.user_id)
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    # @friend = Friend.find(params[:friend_id])
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end
end
