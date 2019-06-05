class CreateCaseSafetyFactors < ActiveRecord::Migration[5.2]
  def change
    create_table :case_safety_factors do |t|
      t.string :reason
      t.string :Safety_factor
      t.string :references
      t.references :case, foreign_key: true

      t.timestamps
    end
  end
end
