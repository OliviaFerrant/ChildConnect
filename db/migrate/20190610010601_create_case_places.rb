class CreateCasePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :case_places do |t|
      t.references :place, foreign_key: true
      t.references :case, foreign_key: true

      t.timestamps
    end
  end
end
