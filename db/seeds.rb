# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = [
	Category.create(name: "Electronics"),
	Category.create(name: "Furniture"),
	Category.create(name: "Cooking"),
	Category.create(name: "Pet Care"),
	Category.create(name: "Entertainment")
]

Product.create(name: 'Pen', price: 1.20, quantity: 100, 
	description:'An elegant writing tool', brand: 'Bic', rating: 2,
	category: categories[4])

Product.create(name: '4k TV', price: 1200, quantity: 5, 
	description:'Zone out in front of this amazing tv', brand: 'Vizio', 
	rating: 4,
	category: categories[0])

Product.create(name: 'Spatula', price: 4, quantity: 30, 
	description:'An elegant cooking tool', brand: 'Cuisinart', 
	rating: 3,
	category: categories[2])