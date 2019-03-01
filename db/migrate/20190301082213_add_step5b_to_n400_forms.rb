class AddStep5bToN400Forms < ActiveRecord::Migration[5.2]
  def change
    add_column :n400_forms, :mailing_address_street_1, :string
    add_column :n400_forms, :mailing_address_street_2, :string
    add_column :n400_forms, :mailing_address_city, :string
    add_column :n400_forms, :mailing_address_county, :string
    add_column :n400_forms, :mailing_address_state, :string
    add_column :n400_forms, :mailing_address_zip, :string
    add_column :n400_forms, :mailing_address__plus_4, :string
    add_column :n400_forms, :mailing_address_province, :string
    add_column :n400_forms, :mailing_address_postal, :string
    add_column :n400_forms, :mailing_address_country, :string
    add_column :n400_forms, :mailing_address_date_from, :date
    add_column :n400_forms, :mailing_address_date_to, :date
  end
end
