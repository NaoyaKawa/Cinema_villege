class Admin::MagazinesController < ApplicationController
  def index
    @magazines = Magazine.all
  end

  def show
    @magazine = Magazine.find(params[:id])
  end

  def new
    @magazine = Magazine.new
  end

  def create
    @magazine = Magazine.new(magazine_params)
    if
      @magazine.save
      flash[:notice] = "登録しました"
      redirect_to admin_magazine_path(@magazine.id)
    else
      render :new
    end
  end

  def edit
    @magazine = Magazine.find(params[:id])

  end

  def update
    @magazine = Magazine.find(params[:id])
    
      @magazine.update(magazine_params)
      flash[:success] = "商品内容をを変更しました"
      redirect_to admin_magazine_path(@magazine.id)
    
  end

  def destroy
    @magazine = Magazine.find(params[:id])
    @magazine.destroy
    redirect_to admin_magazine_path
  end

  private
  def magazine_params
    params.require(:magazine).permit(:title, :content)
  end
end
