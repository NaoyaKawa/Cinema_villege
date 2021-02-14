class CreateTheaterTags < ActiveRecord::Migration[5.2]
  def change
    create_table :theater_tags do |t|
      t.integer :theater_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
