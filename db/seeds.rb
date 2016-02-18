# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email:Faker::Internet.email, password: "1234", avatar: Faker::Avatar.image("my-own-slug", "50x50"))
end

10.times do
  Opportunity.create(name:Faker::Name.name, position:Faker::Name.title, description: Faker::Lorem.sentences(1))
  Contact.create(name:Faker::Name.name, email:Faker::Internet.email, phone: Faker::Number.number(10))
end
