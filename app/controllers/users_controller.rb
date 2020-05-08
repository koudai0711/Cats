class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @tweet = user.tweets.order("created_at DESC")
  end
end
