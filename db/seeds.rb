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
    email: "user#{u}@example.com",
    password: 'asdfasdf', 
    password_confirmation: 'asdfasdf'
  )
end

puts '20 users created'

20.times do |f|
  N400Form.create!(
    nine_digit_a_number: '321321321',
    social_security_num: '123123123', 
    user_id: f + 3, 
    status: rand(0..3)
  )
end

puts '20 n400 forms created'