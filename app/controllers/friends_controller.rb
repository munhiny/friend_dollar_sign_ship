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
    @friends = Friend.all
    @users = User.all
  end

  def show
    @friend = Friend.find(params[:id])
    @user = User.find(params[:id])
  end

  private

  def friend_params
    params.require(:friend).permit(:price, :description, :location)
  end
end
