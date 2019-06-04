class CreateCases < ActiveRecord::Migration[5.2]
  def change
    create_table :cases do |t|
      t.date :start_date
      t.date :end_date
      t.string :family_name
      t.string :child_name
      t.string :address
      t.string :state
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
