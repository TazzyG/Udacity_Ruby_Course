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
  # Print the name of the toy
  puts toy["description"]
  # Print the retail price of the toy
  retail_price = toy["full-price"]
  puts  retail_price
  # Calculate and print the total number of purchases
  purchases = toy["purchases"].length
  puts purchases
  # Calculate and print the total amount of sales
  sales = toy["purchases"]["price".to_i]["price"]
  sales_total = sales += sales
  puts sales_total
  # Calculate and print the average price the toy sold for
  average_price = sales_total/purchases
  puts average_price
  # Calculate and print the average discount (% or $) based off the average sales price
  discount = retail_price.to_i - average_price
  puts discount.round(2)



	puts " _                         _     "
	puts "| |                       | |    "
	puts "| |__  _ __ __ _ _ __   __| |___ "
	puts "| '_ \\| '__/ _` | '_ \\ / _` / __|"
	puts "| |_) | | | (_| | | | | (_| \\__ \\"
	puts "|_.__/|_|  \\__,_|_| |_|\\__,_|___/"
	puts

# For each brand in the data set:


brands = products_hash["items"].each do |item|
  
  # Print the name of the brand
    puts item["brand"]
    # Count and print the number of the brand's toys we stock
    puts item["stock"]
    # Calculate and print the average price of the brand's toys
    # Factors for Calculating average price
    # Price
    price = item["purchases"]["price".to_i]["price"]
    # Aggregate total based on price of brand
    price_total = price += price
    # Number of items purchased
    sales = item["purchases"].length
    # Calculation for Average Price
    average_price = price_total/sales
    puts average_price
    # Calculate and print the total revenue of all the brand's toy sales combined
    # Factors for Calculating total revenue of brand
    retail_price = item["full-price"].to_i 
    gross_revenue = sales * retail_price
    cost = sales * average_price
    revenue = gross_revenue - cost
    puts revenue.round(2)
    puts "---------------------------------------------------------------"
  

  end
  
end