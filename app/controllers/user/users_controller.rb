class User::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if
      @user.update(update_params)
      redirect_to user_path(@user.id), notice: 'お客様情報を更新しました。'
    else
      render :edit
    end
  end

  def withdraw
    @user = current_user.destroy
    reset_session
    redirect_to "/"
  end

  private
  def update_params
    params.require(:user).permit(:name, :email, :phone_number, :image)
  end
end
