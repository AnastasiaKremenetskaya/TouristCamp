# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
25.times do
  country = Country.create(name: Faker::Address.country)
  if country.persisted?
    region = country.regions.create(name: Faker::Address.state)
    if region.persisted?
      city = region.cities.create(name: Faker::Address.city)
      if city.persisted?
        city.camps.create(name: Faker::Restaurant.name  )
      end
    end
  end
  puts country.inspect
end
