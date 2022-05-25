# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
User.destroy_all
major_floats_owner = User.create(name: "Jon", email: "jonathan.mclachlan@hotmail.com", password: "123456")
# major_floats_owner = User.find("1")

Floatdevice.destroy_all

unicorn = Floatdevice.new(name: "Unicorn", price: 5, category: "Animal", size: 1, description: "Really nice floaty unicorn")
unicorn_pic = URI.open('https://res.cloudinary.com/dg9murjje/image/upload/v1653403129/unicorn-float_nd3fsp.jpg')
unicorn.photo.attach(io: unicorn_pic, filename: 'unicorn.jpg', content_type: 'image/jpg')
unicorn.user = major_floats_owner
unicorn.save

flamingo = Floatdevice.new(name: "Flamingo", price: 10, category: "Animal", size: 4, description: "Really nice floaty flamingo")
flamingo_pic = URI.open('https://res.cloudinary.com/dg9murjje/image/upload/v1653403205/flamingo_z6tb29.webp')
flamingo.photo.attach(io: flamingo_pic, filename: 'flamingo.jpg', content_type: 'image/jpg')
flamingo.user = major_floats_owner
flamingo.save

donut = Floatdevice.new(name: "Donut", price: 1, category: "Food", size: 1, description: "Really nice floaty donut")
donut_pic = URI.open('https://res.cloudinary.com/dg9murjje/image/upload/v1653403042/donut-float_v5kjwf.jpg')
donut.photo.attach(io: donut_pic, filename: 'donut.jpg', content_type: 'image/jpg')
donut.user = major_floats_owner
donut.save

strawberry = Floatdevice.new(name: "Strawberry", price: 2, category: "Food", size: 1, description: "Really nice floaty strawberry")
strawberry_pic = URI.open('https://res.cloudinary.com/dg9murjje/image/upload/v1653403106/strawberry-float_qkqd7g.webp')
strawberry.photo.attach(io: strawberry_pic, filename: 'strawberry.jpg', content_type: 'image/jpg')
strawberry.user = major_floats_owner
strawberry.save

pizza = Floatdevice.new(name: "Pizza", price: 2, category: "Food", size: 5, description: "Really nice floaty pizza")
pizza_pic = URI.open('https://res.cloudinary.com/dg9murjje/image/upload/v1653403098/pizza-float_e3wgvx.jpg')
pizza.photo.attach(io: pizza_pic, filename: 'pizza.jpg', content_type: 'image/jpg')
pizza.user = major_floats_owner
pizza.save
