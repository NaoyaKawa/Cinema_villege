class AddMapInfoToTheaters < ActiveRecord::Migration[5.2]
  def change
    add_column :theaters, :latitude, :float
    add_column :theaters, :longitude, :float
  end
end
