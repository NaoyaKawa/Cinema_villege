class Admin::TheatersController < ApplicationController
  def index
    @theaters = Theater.all
    @tag_list = Tag.all
    @theater = current_user.theaters.new
  end

  def show
    @theater = Theater.find(params[:id])
    @theater_tags = @theater.tags
  end

  def new
    @theater = Theater.new
  end

  def create
    @theater = Theater.new(theater_params)
    tag_list = params[:theater][:tag_name].split(nil)
    if
      @theater.save
      @theater.save_tag(tag_list)
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
    redirect_to theaters_path
  end

  private
  def theater_params
    params.require(:theater).permit(:name, :introduction, :address, :access, :parking, :phone_number, :url, :image, :prefecture)
  end
end
