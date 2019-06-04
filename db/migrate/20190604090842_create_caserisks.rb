class CreateCaserisks < ActiveRecord::Migration[5.2]
  def change
    create_table :caserisks do |t|
      t.references :case, foreign_key: true
      t.references :risk, foreign_key: true

      t.timestamps
    end
  end
end
