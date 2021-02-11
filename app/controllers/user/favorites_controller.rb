class User::FavoritesController < ApplicationController
  def create
    theater = Theater.find(params[:theater_id])
    favorite = current_user.favorites.new(theater_id: theater.id)
    favorite.save
    redirect_to theater_path(theater)
  end

  def destroy
    theater = Theater.find(params[:theater_id])
    favorite = current_user.favorites.find_by(theater_id: theater.id)
    favorite.destroy
    redirect_to theater_path(theater)
  end
end
