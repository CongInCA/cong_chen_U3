require_relative 'ar.rb'

product_to_delete1 = Product.find_by(name: "Product 1")
product_to_delete2 = Product.find_by(name: "Product 2")
product_to_delete3 = Product.find_by(name: "Product 3")

if product_to_delete1
  product_to_delete1.destroy
  puts "Product '#{product_to_delete1.name}' has been deleted."
else
  puts "Product not found."
end

if product_to_delete2
  product_to_delete2.destroy
  puts "Product '#{product_to_delete2.name}' has been deleted."
else
  puts "Product not found."
end

if product_to_delete3
  product_to_delete3.destroy
  puts "Product '#{product_to_delete3.name}' has been deleted."
else
  puts "Product not found."
end