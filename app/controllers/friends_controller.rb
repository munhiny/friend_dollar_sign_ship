class FriendsController < ApplicationController
    def index
        @friends = Friend.all
    end


    def show
    # @friend = Friend.find(params[:id])
    end


    def new
      # @user = User.find(params[:id])
      @friend = Friend.new
    end

end
