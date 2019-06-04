class AddPhoneNumbersToCase < ActiveRecord::Migration[5.2]
  def change
    add_column :cases, :phone_number, :string
  end
end
