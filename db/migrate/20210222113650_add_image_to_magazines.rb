class AddImageToMagazines < ActiveRecord::Migration[5.2]
  def change
    add_column :magazines, :image_id, :string
  end
end
