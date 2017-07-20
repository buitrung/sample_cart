# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Products
50.times do
	manufacture = Faker::Vehicle.manufacture
	code = Faker::Superhero.descriptor
	title = "[#{manufacture}] #{code}"
	price = Faker::Number.number(4)
	Product.create!(title: title, price: price)
end