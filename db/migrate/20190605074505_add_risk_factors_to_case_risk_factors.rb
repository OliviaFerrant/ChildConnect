class AddRiskFactorsToCaseRiskFactors < ActiveRecord::Migration[5.2]
  def change
    add_reference :case_safety_factors, :safety_factor, foreign_key: true
  end
end
