class AddNineDigitANumberToN400Forms < ActiveRecord::Migration[5.2]
  def change
    add_column :n400_forms, :nine_digit_a_number, :integer
  end
end
