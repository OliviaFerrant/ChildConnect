class DeleteColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :personnal_id
    remove_column :users, :name
  end
end
