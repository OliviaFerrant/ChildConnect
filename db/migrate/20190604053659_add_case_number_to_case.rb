class AddCaseNumberToCase < ActiveRecord::Migration[5.2]
  def change
    add_column :cases, :case_number, :string
  end
end
