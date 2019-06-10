class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :address
      t.references :case, foreign_key: true

      t.timestamps
    end
  end
end
