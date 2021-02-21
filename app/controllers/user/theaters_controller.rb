class User::TheatersController < ApplicationController
  before_action :set_q, only: [:index, :search]
  
  def index
    @theaters = Theater.all
  end
  
  def show
    @theater = Theater.find(params[:id])
    @comment = Comment.new
  end
  
  def search
    @results = @q.result
  end
  
  private
  def set_q
    @q = User.ransack(params[:q])
  end
end
