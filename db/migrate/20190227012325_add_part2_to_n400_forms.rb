class AddPart2ToN400Forms < ActiveRecord::Migration[5.2]
  def change
    add_column :n400_forms, :legal_last_name, :string
    add_column :n400_forms, :legal_first_name, :string
    add_column :n400_forms, :legal_middle_name, :string
    add_column :n400_forms, :resident_last_name, :string
    add_column :n400_forms, :resident_first_name, :string
    add_column :n400_forms, :resident_middle_name, :string
    add_column :n400_forms, :name_change, :string
    add_column :n400_forms, :new_last_name, :string
    add_column :n400_forms, :new_first_name, :string
    add_column :n400_forms, :new_middle_name, :string
    add_column :n400_forms, :social_security_num, :string
    add_column :n400_forms, :uscis_num, :string
    add_column :n400_forms, :gender, :string
    add_column :n400_forms, :date_of_birth, :date
    add_column :n400_forms, :date_of_residency, :date
    add_column :n400_forms, :country_of_birth, :string
    add_column :n400_forms, :country_of_citizendship, :string
    add_column :n400_forms, :physical_disability, :string
    add_column :n400_forms, :years_or_older_50, :string
    add_column :n400_forms, :years_or_older_55, :string
    add_column :n400_forms, :years_or_older_65, :string
  end
end
