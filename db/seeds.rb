# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:

require 'faker'


Category.destroy_all
Item.destroy_all


#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do 
  category = Category.create(title: Faker::Commerce.department)
end

30.times do 
  item = Item.create(title: Faker::Commerce.product_name, price: rand(50..120), email: Faker::Internet.email, category_id: rand(10))
end