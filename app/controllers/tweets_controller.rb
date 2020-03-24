class TweetsController < ApplicationController
  before_action :tweet_params, only: [:create]

  def index
    @tweets = Tweet.all
  end

  def new
    @tweets = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
  end

  private
  def tweet_params
    params.require(:tweet).permit(:name, :text, :image)
  end
end
