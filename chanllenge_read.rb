require_relative 'ar.rb'

# Use the Product class to find (any) product from the database.
product = Product.first

# Inspect the Product object you have retrieved.
puts "Product Details:"
puts product.inspect


# Print all the columns' name and then add a comment to product.rb.
# columns = Product.column_names
# puts "Columns in the products table:"
# columns.each { |column| puts "- #{column}" }

# Total number of products, use .count method.
total_products = Product.count
puts "Total number of products: #{total_products}"

# The names of all products above $10 with names that begin with the letter C.
products_above_10 = Product.where("price > 10 AND name LIKE 'C%'")
puts "Products above $10 with names starting with 'C':"
puts products_above_10.pluck(:name)

# Total number of products with a low stock quantity. 
low_stock_products = Product.where("stock_quantity < 5")
puts "Total number of products with low stock quantity (less than 5): #{low_stock_products.count}"


# Find the name of the category associated with one of the products you have found.
product = Product.find_by(name: "Chai")

# Check if the product is found
if product
  # Access the associated category without referencing the foreign key value
  category_name = product.category.name
  puts "Category associated with '#{product.name}': #{category_name}"
else
  puts "Product not found."
end

# Find a specific category and use it to build and persist a new product associated with this category.
category = Category.find_by(name: "Beverages")

# Check if the category is found
if category
  # Build a new product associated with the category
  new_product = category.products.build(name: "New Product", description: "New Description", price: 15.0, stock_quantity: 20)
  
  # Save the new product
  if new_product.save
    puts "New product '#{new_product.name}' associated with '#{category.name}' has been created and persisted."
  else
    puts "Error creating and persisting the new product."
  end
else
  puts "Category not found."
end

# Find a specific category and then use it to locate all the associated products over a certain price.
category_with_high_price_products = Category.find_by(name: "Beverages")

# Check if the category is found
if category_with_high_price_products
  # Locate all the associated products over a certain price (e.g., 10.0)
  high_price_products = category_with_high_price_products.products.where("price > ?", 10.0)
  
  # Output the names of high price products
  puts "High price products associated with '#{category_with_high_price_products.name}':"
  high_price_products.each do |product|
    puts "- #{product.name}"
  end
else
  puts "Category not found."
end

puts "Hello from Ruby script!"
