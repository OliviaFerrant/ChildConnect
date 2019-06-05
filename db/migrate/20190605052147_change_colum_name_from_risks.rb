class ChangeColumNameFromRisks < ActiveRecord::Migration[5.2]
  def change
    rename_column :risks, :type, :category
  end
end
