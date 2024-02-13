require_relative 'ar.rb'

products_above_40 = Product.where("stock_quantity > 40")

products_above_40.each do |product|
  product.stock_quantity += 1
end

products_above_40.each(&:save)