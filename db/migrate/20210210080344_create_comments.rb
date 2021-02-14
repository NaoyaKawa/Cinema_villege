class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :theater_id
      t.text :comment
      t.float :clean, null: false
      t.float :seat, null: false
      t.float :sound, null: false
      t.float :quality, null: false
      t.float :access, null: false
      
      t.timestamps
    end
  end
end
