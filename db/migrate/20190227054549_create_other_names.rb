class CreateOtherNames < ActiveRecord::Migration[5.2]
  def change
    create_table :other_names do |t|
      t.string :family_name
      t.string :given_name
      t.string :middle_name
      t.belongs_to :n400_form, foreign_key: true, on_delete: :cascade

      t.timestamps
    end
  end
end
