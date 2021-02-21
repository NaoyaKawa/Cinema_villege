class AddTheaterIdToTheaterTag < ActiveRecord::Migration[5.2]
  def change
    add_reference :theater_tags, :theater, foreign_key: true
    add_reference :theater_tags, :tag, foreign_key: true
  end
end
