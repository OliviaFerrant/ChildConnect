class AddCoordinatesToCases < ActiveRecord::Migration[5.2]
  def change
    add_column :cases, :latitude, :float
    add_column :cases, :longitude, :float
  end
end
