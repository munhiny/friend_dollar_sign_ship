class FriendsController < ApplicationController
    def index
        @Friend = Friend.all
    end
end
