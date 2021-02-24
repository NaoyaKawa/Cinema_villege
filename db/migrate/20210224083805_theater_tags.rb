class TheaterTags < ActiveRecord::Migration[5.2]
  def change
    drop_table :theater_tags
  end
end
