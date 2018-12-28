class TweetsController < ApplicationController
  def create
    client = Twitter::REST::Client.new(
      consumer_key: ENV['CONSUMER_KEY'],
      consumer_secret: ENV['CONSUMER_SECRET'],
      access_token: ENV['ACCESS_TOKEN'],
      access_token_secret: ENV['ACCESS_TOKEN_SECRET']
    )

    client.update(params[:text])

    redirect_to new_tweet_path
  rescue => e
    flash[:error] = e
    redirect_to new_tweet_path
  end
end
