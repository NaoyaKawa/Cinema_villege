class User::TheatersController < ApplicationController
  before_action :set_q, only: [:index, :search]

  def index
    @theaters = Theater.all.page(params[:page]).per(10)
  end

  def show
    if user_signed_in?
    @theater = Theater.find(params[:id])
    @comment = Comment.new
    else
      redirect_to new_user_session_path
    end
  end

  def search
    @results = @q.result.page(params[:page]).per(10)
  end

  private
  def set_q
    @q = User.ransack(params[:q])
  end
end
