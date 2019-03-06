class AddStatusToN400Forms < ActiveRecord::Migration[5.2]
  def change
    add_column :n400_forms, :status, :integer, default: 0
  end
end
