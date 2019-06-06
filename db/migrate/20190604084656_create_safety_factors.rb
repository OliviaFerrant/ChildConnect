class CreateSafetyFactors < ActiveRecord::Migration[5.2]
  def change
    create_table :safety_factors do |t|
      t.string :fact

      t.timestamps
    end
  end
end
