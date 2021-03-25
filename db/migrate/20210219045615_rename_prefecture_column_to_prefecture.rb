class RenamePrefectureColumnToPrefecture < ActiveRecord::Migration[5.2]
  def change
    rename_column :theaters, :Prefecture, :prefecture
  end
end
