# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# major_floats_owner = User.new(name: "Jon", email: "jonathan.mclachlan@hotmail.com", password: "123456")

require "open-uri"

major_floats_owner = User.find("1")

Floatdevice.destroy_all

unicorn = Floatdevice.new(name: "Unicorn", price: 5, category: "Animal", size: 1, description: "Really nice floaty unicorn")
unicorn_pic = URI.open('https://res.cloudinary.com/dg9murjje/image/upload/v1653403129/unicorn-float_nd3fsp.jpg')
unicorn.photo.attach(io: unicorn_pic, filename: 'unicorn.png', content_type: 'image/png')
unicorn.user = major_floats_owner
unicorn.save

flamingo = Floatdevice.new(name: "Flamingo", price: 10, category: "Animal", size: 4, description: "Really nice floaty flamingo")
flamingo.user = major_floats_owner
flamingo.save

donut = Floatdevice.new(name: "Donut", price: 1, category: "Food", size: 1, description: "Really nice floaty donut")
donut.user = major_floats_owner
donut.save

strawberry = Floatdevice.new(name: "Strawberry", price: 2, category: "Food", size: 1, description: "Really nice floaty strawberry")
strawberry.user = major_floats_owner
strawberry.save

pizza = Floatdevice.new(name: "Pizza", price: 2, category: "Food", size: 5, description: "Really nice floaty pizza")
pizza.user = major_floats_owner
pizza.save
