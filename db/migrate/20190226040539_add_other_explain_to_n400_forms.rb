class AddOtherExplainToN400Forms < ActiveRecord::Migration[5.2]
  def change
    add_column :n400_forms, :other_explain, :integer
  end
end
