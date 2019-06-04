class AddCaseNumberToCase < ActiveRecord::Migration[5.2]
  def change
    add_column :cases, :case_number, :integer
  end
end
