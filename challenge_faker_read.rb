# challenge_faker_read.rb
require_relative 'ar.rb'

# Find all categories in the database
categories = Category.all

# Display category names and associated products (name and price)
categories.each do |category|
  puts "Category: #{category.name}"
  category.products.each do |product|
    puts "  Product: #{product.name}, Price: #{product.price}"
  end
  puts "\n"
end