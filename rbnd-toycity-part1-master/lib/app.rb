require 'json'
path = File.join(File.dirname(__FILE__), '../data/products.json')
file = File.read(path)
products_hash = JSON.parse(file)

# Print today's date

puts "                     _            _       "
puts "                    | |          | |      "
puts " _ __  _ __ ___   __| |_   _  ___| |_ ___ "
puts "| '_ \\| '__/ _ \\ / _` | | | |/ __| __/ __|"
puts "| |_) | | | (_) | (_| | |_| | (__| |_\\__ \\"
puts "| .__/|_|  \\___/ \\__,_|\\__,_|\\___|\\__|___/"
puts "| |                                       "
puts "|_|                                       "


# For each product in the data set:
products_hash["items"].each do |toy|
  # Print the name of the toy
  puts toy["title"]
  puts "*" * 20
  # Print the retail price of the toy
  retail_price =  toy["full-price"]
  puts  "Retail Price: $#{retail_price}"
  # Calculate and print the total number of purchases
  purchases = toy["purchases"].length
  puts "Total Purchases: #{purchases}"
  # Loop through purchases to find total sales
  sales = 0
  toy["purchases"]["price".to_i]["price"]
  toy["purchases"].each do |purchase|
  sales += purchase["price"] 
  end
  puts "Total Sales: $#{sales}"
   
  
  # Calculate and print the average price the toy sold for
  average_price = sales/purchases
  puts "Average Price: $#{average_price}"
  # Calculate and print the average discount (% or $) based off the average sales price
  discount = (retail_price.to_f - average_price.to_f).round(2)
  puts "Average Discount: $#{discount}"
  discount_percentage = (discount.to_f/retail_price.to_f)*100
  puts "Average Discount Percentage: " + discount_percentage.round(2).to_s + "%"
  puts "*" * 20 
  puts ""
end


	puts " _                         _     "
	puts "| |                       | |    "
	puts "| |__  _ __ __ _ _ __   __| |___ "
	puts "| '_ \\| '__/ _` | '_ \\ / _` / __|"
	puts "| |_) | | | (_| | | | | (_| \\__ \\"
	puts "|_.__/|_|  \\__,_|_| |_|\\__,_|___/"
	puts

# For each brand in the data set:
toy_brands = products_hash["items"].map { |item| item["brand"] }.uniq
  toy_brands.each_with_index do |brand, index|
    
  brands_toys = products_hash["items"].select{ |item| item["brand"] == brand }

  total_stock_brand = 0
  total_full_price_brand = 0
  total_brand_products = 0
  total_sales = 0

  brands_toys.each {|toy| total_stock_brand += toy["stock"].to_i }
  brands_toys.each {|toy| total_full_price_brand += toy["full-price"].to_f}  
  brands_toys.each {|toy| total_brand_products += toy["purchases"].length}
  brands_toys.each {|toy| total_sales += toy["purchases"]["price".to_i]["price"]}

  # Print the name of the brand

   puts "#{brand}"
   puts "*"*20
  # Count and print the number of the brand's toys we stock
  
  puts "PART 1*************Total Brand Products: #{total_brand_products}"
  puts "PART 2*************Total Retail : #{total_full_price_brand.round(2)}"
  
  puts "Number of Products: #{total_stock_brand}"

  # Calculate and print the average price of the brand's toys

  puts "Average Price $#{(total_full_price_brand.round/total_brand_products)}"
  
  

  # Calculate and print the total revenue of all the brand's toy sales combined
  puts "Total Sales: $#{total_sales.round(2)}"
   
  puts ""    

end

