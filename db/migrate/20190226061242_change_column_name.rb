class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
     rename_column :n400_forms, :eligitility, :eligibility
  end
end

