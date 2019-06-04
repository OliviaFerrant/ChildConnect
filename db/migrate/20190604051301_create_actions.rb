class CreateActions < ActiveRecord::Migration[5.2]
  def change
    create_table :actions do |t|
      t.date :due_date
      t.string :status
      t.string :title
      t.string :description
      t.string :report
      t.references :case, foreign_key: true

      t.timestamps
    end
  end
end
