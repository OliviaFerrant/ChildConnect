class AddSummaryToCase < ActiveRecord::Migration[5.2]
  def change
    add_column :cases, :summary, :string
  end
end
