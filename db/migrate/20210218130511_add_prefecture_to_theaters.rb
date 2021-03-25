class AddPrefectureToTheaters < ActiveRecord::Migration[5.2]
  def change
    add_column :theaters, :Prefecture, :integer, null: false, default: 0
  end
end
