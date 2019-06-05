class ChangeColumNameFromRisks < ActiveRecord::Migration[5.2]
  def change
    remove_column :risks, :type
  end
end
