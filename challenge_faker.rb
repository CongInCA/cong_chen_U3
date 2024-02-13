# challenge_faker.rb
require_relative 'ar.rb'

# Use Faker to generate 10 new categories
10.times do
  category = Category.create(name: Faker::Commerce.department)

  # Generate 10 new products for each category
  10.times do
    Product.create(
      name: Faker::Commerce.product_name,
      description: Faker::Lorem.sentence,
      price: Faker::Commerce.price(range: 0..100.0, as_string: false),
      stock_quantity: Faker::Number.between(from: 1, to: 100),
      category: category
    )
  end
end
