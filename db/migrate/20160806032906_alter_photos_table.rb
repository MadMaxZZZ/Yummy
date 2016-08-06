class AlterPhotosTable < ActiveRecord::Migration
  def change
    add_column :photos, :picture, :string
    remove_column :photos, :photo
  end
end
