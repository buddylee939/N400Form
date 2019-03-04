class CreateN400Forms < ActiveRecord::Migration[5.2]
  def change
    create_table :n400_forms do |t|
      t.string :eligibility

      t.timestamps
    end
  end
end
