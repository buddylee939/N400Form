class AddPart4ToN400Forms < ActiveRecord::Migration[5.2]
  def change
    add_column :n400_forms, :phone_day, :string
    add_column :n400_forms, :phone_work, :string
    add_column :n400_forms, :phone_evening, :string
    add_column :n400_forms, :phone_mobile, :string
    add_column :n400_forms, :email_address, :string
  end
end
