class CreateTheaters < ActiveRecord::Migration[5.2]
  def change
    create_table :theaters do |t|
      t.string :name
      t.text :introduction
      t.integer :prefecture_id
      t.string :address
      t.string :access
      t.string :parking
      t.string :phone_number
      t.string :url
      t.string :image

      t.timestamps
    end
  end
end
