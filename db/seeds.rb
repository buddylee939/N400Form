# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: 'admin@example.com', password: 'asdfasdf', password_confirmation: 'asdfasdf', roles: 'site_admin')
User.create!(email: 'manager@example.com', password: 'asdfasdf', password_confirmation: 'asdfasdf', roles: 'site_manager')
User.create!(email: 'user@example.com', password: 'asdfasdf', password_confirmation: 'asdfasdf')

puts '1 user created'
puts '1 admin created'
puts '1 manager created'

states = ['Alaska', 'Arizona', 'California', 'Florida', 'Delaware']

5.times do |s|
  FieldOffice.create!(
    state: states[s],
    name: "Field Office"
  )
end

puts '5 Field Offices created'

20.times do |u|
  User.create!(
    email: Faker::Internet.email,
    password: 'asdfasdf', 
    password_confirmation: 'asdfasdf', 
    created_at: Faker::Date.between(5.years.ago, 2.days.ago)
  )
end

puts '20 users created'

20.times do |f|
  N400Form.create!(
    nine_digit_a_number: Faker::Bank.account_number(9),
    social_security_num: Faker::Bank.account_number(9), 
    user_id: f + 3, 
    status: rand(0..3), 
    eligibility: 'Have been a lawful permanent resident of the United States for at least 5 years.',
    legal_last_name: Faker::Name.last_name,
    legal_first_name: Faker::Name.first_name,
    legal_middle_name: Faker::Name.middle_name, 
    resident_last_name: Faker::Name.last_name, 
    resident_first_name: Faker::Name.first_name,
    resident_middle_name: Faker::Name.middle_name,
    gender: ["Female", "Male"].sample,
    date_of_birth: Faker::Date.birthday(18, 80),
    date_of_residency: Faker::Date.between(5.years.ago, 2.days.ago),
    country_of_birth: Faker::Address.country,
    phone_day: Faker::PhoneNumber.cell_phone, 
    email_address: Faker::Internet.email,
    physical_address_street_1: Faker::Address.street_address,
    physical_address_street_2: Faker::Address.secondary_address,
    physical_address_city: Faker::Address.city,
    physical_address_state: Faker::Address.state,
    physical_address_zip: Faker::Address.zip, 
    created_at: Faker::Date.between(5.years.ago, 2.days.ago)
  )
end

puts '20 n400 forms created'