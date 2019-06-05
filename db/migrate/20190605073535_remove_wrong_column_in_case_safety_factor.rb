class RemoveWrongColumnInCaseSafetyFactor < ActiveRecord::Migration[5.2]
  def change
    remove_column :case_safety_factors, :Safety_factor
    remove_column :case_safety_factors, :references
  end
end
