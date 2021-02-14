class RemoveCleanFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :clean, :float
    remove_column :comments, :seat, :float
    remove_column :comments, :sound, :float
    remove_column :comments, :quality, :float
    remove_column :comments, :access, :float
  end
end
