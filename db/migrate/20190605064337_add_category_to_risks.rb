class AddCategoryToRisks < ActiveRecord::Migration[5.2]
  def change
    add_column :risks, :category, :string
  end
end
