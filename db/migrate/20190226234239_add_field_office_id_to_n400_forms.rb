class AddFieldOfficeIdToN400Forms < ActiveRecord::Migration[5.2]
  def change
    add_column :n400_forms, :field_office_id, :integer
  end
end
