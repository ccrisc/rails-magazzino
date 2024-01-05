# db/seeds.rb
require 'faker'

# Clear existing data
OrderItem.destroy_all
Order.destroy_all
User.destroy_all
Item.destroy_all

# Create Users
30.times do
  User.create(
    name: Faker::Name.first_name,
    surname: Faker::Name.last_name,
    email: Faker::Internet.email
  )
end

# Create Items
20.times do
  Item.create(
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.sentence,
    stock: rand(1..100)
  )
end

# Create Orders with random associations
User.all.each do |user|
  rand(1..3).times do
    order = user.orders.create
    rand(1..5).times do
      item = Item.all.sample
      order.order_items.create(
        item: item,
        quantity: rand(1..10)
      )
    end
  end
end
