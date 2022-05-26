class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(blog_params)
    if @tweet.save
      redirect_to tweets_path
    else
      render :new
    end
  end

  private

  def blog_params
    params.require(:tweet).permit(:content)
  end
end
