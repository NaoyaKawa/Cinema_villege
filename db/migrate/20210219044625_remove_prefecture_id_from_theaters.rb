class RemovePrefectureIdFromTheaters < ActiveRecord::Migration[5.2]
  def change
    remove_column :theaters, :prefecture_id, :integer
  end
end
