class TweetsController < ApplicationController
  before_action :tweet_params, only: [:create]
  before_action :move_to_index, except: [:index]
  before_action :set_tweet, only: [:edit, :show]
  before_action :sets_tweet, only: [:update, :destroy]
  def index
    @tweet = Tweet.includes(:user).order("created_at DESC")
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.create(tweet_params)
    if @tweet.save
    else
      render :new
    end
  end

  def edit
  end

  def update
    tweet = Tweet.find(params[:id])
    tweet.update(tweet_params)
  end

  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
  end

  def show
  end

  def search
    @tweet = Tweet.search(params[:keyword])
  end

  private
  def tweet_params
    params.require(:tweet).permit(:back, :personal, :health, :method, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def set_tweet
    @tweet = Tweet.find(params[:id]) 
  end

  def sets_tweet
    tweet = Tweet.find(params[:id])
  end
end
