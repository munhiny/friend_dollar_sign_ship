class BookingsController < ApplicationController
  def new
    @friend = Friend.find(params[:friend_id])
    @friend_user = User.find(@friend.user_id)
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @friend = Friend.find(params[:friend_id])
    @booking.friend = @friend
    @booking.user = current_user
    if @booking.save
      redirect_to friend_booking_path(@friend, @booking)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @friend = Friend.find(params[:friend_id])
    @user = current_user
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end
end
