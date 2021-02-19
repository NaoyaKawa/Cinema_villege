class AddRateToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :clean, :float, null: false, default: 0
  end
end
