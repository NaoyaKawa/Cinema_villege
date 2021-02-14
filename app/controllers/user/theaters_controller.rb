class User::TheatersController < ApplicationController
  def index
    @theaters = Theater.all
  end
  
  def show
    @theater = Theater.find(params[:id])
    @comment = Comment.new
  end
  
end
