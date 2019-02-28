# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: 'buddylee939@hotmail.com', password: 'asdfasdf', password_confirmation: 'asdfasdf')

puts '1 user created'

states = ['Alaska', 'Arizona', 'California', 'Florida', 'Delaware']

5.times do |s|
  FieldOffice.create!(
    state: states[s],
    name: "Field Office"
  )
end

puts '5 Field Offices created'