class AddPhysicalMailingAddressToN400Forms < ActiveRecord::Migration[5.2]
  def change
    add_column :n400_forms, :mailing_physical_address, :boolean
  end
end
