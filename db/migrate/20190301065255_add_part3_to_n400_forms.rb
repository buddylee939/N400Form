class AddPart3ToN400Forms < ActiveRecord::Migration[5.2]
  def change
    add_column :n400_forms, :disability_accomodation, :integer
    add_column :n400_forms, :hard_of_hearing, :boolean
    add_column :n400_forms, :hard_of_hearing_reason, :string
    add_column :n400_forms, :low_vision, :boolean
    add_column :n400_forms, :low_vision_reason, :string
    add_column :n400_forms, :another_disability, :boolean
    add_column :n400_forms, :another_disability_reason, :string
  end
end
