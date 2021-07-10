class FriendsController < ApplicationController
  def new
    @friend = Friend.new
  end

  def create
    @friend = Friend.new(friend_params)
    @friend.user = current_user
    if @friend.save
      redirect_to friend_path(@friend)
    else
      render :new
    end
  end

  def index
    if params[:query].present?
      @friends = Friend.joins(:user).where("first_name ilike ? OR last_name ilike ?", "%#{params[:query]}%","%#{params[:query]}%")
    else
      @friends = Friend.all
    end
    @markers = @friends.geocoded.map do |friend|
      {
        lat: friend.latitude,
        lng: friend.longitude,
        info_window: render_to_string(partial: "info_window", locals: { friend: friend })
      }
    end
  end

  def show
    @friend = Friend.find(params[:id])
    @user = User.find(params[:id])
  end

  private

  def friend_params
    params.require(:friend).permit(:price, :description, :location, :photo)
  end
end
