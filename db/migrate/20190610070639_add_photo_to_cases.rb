class AddPhotoToCases < ActiveRecord::Migration[5.2]
  def change
    add_column :cases, :photo, :string
  end
end
