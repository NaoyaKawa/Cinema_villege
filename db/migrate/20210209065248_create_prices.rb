class CreatePrices < ActiveRecord::Migration[5.2]
  def change
    create_table :prices do |t|
      t.integer :theater_id
      t.string :price

      t.timestamps
    end
  end
end
