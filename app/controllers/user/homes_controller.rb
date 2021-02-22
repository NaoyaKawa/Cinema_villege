class User::HomesController < ApplicationController
  
  def top
    @all_ranks = Theater.find(Favorite.group(:theater_id).order('count(theater_id) desc').limit(3).pluck(:theater_id))
  end
end
