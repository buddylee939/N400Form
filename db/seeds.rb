# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: 'user@example.com', password: 'asdfasdf', password_confirmation: 'asdfasdf')
User.create!(email: 'admin@example.com', password: 'asdfasdf', password_confirmation: 'asdfasdf', roles: 'site_admin')
User.create!(email: 'manager@example.com', password: 'asdfasdf', password_confirmation: 'asdfasdf', roles: 'site_manager')

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