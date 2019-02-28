class AddUserIdToN400Forms < ActiveRecord::Migration[5.2]
  def change
    add_reference :n400_forms, :user, foreign_key: true
  end
end
