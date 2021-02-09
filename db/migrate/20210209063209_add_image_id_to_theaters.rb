class AddImageIdToTheaters < ActiveRecord::Migration[5.2]
  def change
    add_column :theaters, :image_id, :string
  end
end
