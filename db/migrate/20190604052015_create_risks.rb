class CreateRisks < ActiveRecord::Migration[5.2]
  def change
    create_table :risks do |t|
      t.string :type

      t.timestamps
    end
  end
end
