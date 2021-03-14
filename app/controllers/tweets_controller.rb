class TweetsController < ApplicationController
  
  before_action :move_to_index, except: :index

  def index
    @tweets = Tweet.all
  end
  
  def new
  end

  def create
    Tweet.create(radioname: tweet_params[:listener_name],
                 sex: tweet_params[:listener_sex],
                 age: tweet_params[:listener_age],
                 address: tweet_params[:listener_address],
                 image: tweet_params[:listener_image],
                 user_id: current.user.id
                 )
  end

  private
  def tweet_params
    params.permit(:listener_name, :listener_sex, :listener_age, :listener_address, :listener_image, :program_name, :corner_name, :theme, :text)
  end
  
  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
