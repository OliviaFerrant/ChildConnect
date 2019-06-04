class AddPhoneNumbersToCase < ActiveRecord::Migration[5.2]
  def change
    add_column :cases, :phone_numbers, :string
  end
end
