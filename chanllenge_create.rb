require_relative 'ar.rb'

# 1. Use new and save method.
product1 = Product.new(name: 'Product 1', description: 'Product1', price: 20, stock_quantity: 10)
product1.save

# 2. Use create method.
product2 = Product.create(name: 'Product 2', description: 'Product2', price: 25, stock_quantity: 15)

# 3. Use create! method.
product3 = Product.create!(name: 'Product 3', description: 'Product3', price: 30, stock_quantity: 5)

invalid_product = Product.new(name: 'Invalid Product')
invalid_product.save

# Print error
puts "Errors for invalid_product:"
puts invalid_product.errors.full_messages