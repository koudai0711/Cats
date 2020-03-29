class TweetsController < ApplicationController
  before_action :tweet_params, only: [:create]
  before_action :move_to_index, except: [:index]
  before_action :set_tweet, only: [:edit, :show]
  def index
    @tweets = Tweet.all
  end

  def new
    @tweets = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
    redirect_to tweets_path
  end
  
  def update  
  end

  def edit  
  end

  def destroy  
    tweet = 
  end

  def show
  end

  private
  def tweet_params
    params.require(:tweet).permit(:name, :text, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def set_tweet
    @tweet = Tweet.find(params[:id]) 
  end
end
