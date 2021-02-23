class RemoveTheaterFromTheaterTags < ActiveRecord::Migration[5.2]
  def change
    remove_column :theater_tags, :theater_id, :integer
    remove_column :theater_tags, :tag_id, :integer
  end
end
