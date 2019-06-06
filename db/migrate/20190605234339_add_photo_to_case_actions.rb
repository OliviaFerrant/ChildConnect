class AddPhotoToCaseActions < ActiveRecord::Migration[5.2]
  def change
    add_column :case_actions, :photo, :string
  end
end
