class RenameActions < ActiveRecord::Migration[5.2]
  def change
    rename_table :actions, :case_actions
  end
end
