class Admin::TheatersController < ApplicationController
  def index
    @theaters = Theater.all
  end

  def show
    @theater = Theater.find(params[:id])
  end

  def new
    @theater = Theater.new
  end

  def create
    @theater = Theater.new(theater_params)
    if
      @theater.save
      flash[:notice] = "登録しました"
      redirect_to admin_theater_path(@theater.id)
    else
      render :new
    end
  end

  def edit
    @theater = Theater.find(params[:id])

  end

  def update
    @theater = Theater.find(params[:id])
    if
      @theater.update(theater_params)
      flash[:success] = "内容をを変更しました"
      redirect_to admin_theater_path(@theater.id)
    else
      render :edit
    end
  end

  def destroy
    @theater = Theater.find(params[:id])
    @theater.destroy
    redirect_to admin_theater_path
  end

  private
  def theater_params
    params.require(:theater).permit(:name, :introduction, :address, :access, :parking, :phone_number, :url, :image)
  end
end
