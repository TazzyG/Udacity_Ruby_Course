require 'json'
# Get path to products.json, read the file into a string,
# and transform the string into a usable hash

# methods go here
def start  
	def setup_files
		path = File.join(File.dirname(__FILE__), '../data/products.json')
		file = File.read(path)
		$products_hash = JSON.parse(file)
		$report_file = File.new("report.txt", "w+")
	end
	def create_report
		def border
		puts "*" * 50
		end
		def print_heading(option)
			def ascii_sales_report
				puts "																																									 "
				puts "  _________      .__                  __________                             __    "
				puts " /   _____/____  |  |   ____   ______ \______   \ ____ ______   ____________/  |_  "
				puts " \_____  \\__  \ |  | _/ __ \ /  ___/  |       _// __ \\____ \ /  _ \_  __ \   __\ "
				puts " /        \/ __ \|  |_\  ___/ \___ \   |    |   \  ___/|  |_> >  <_> )  | \/|  |   "
				puts "/_______  (____  /____/\___  >____  >  |____|_  /\___  >   __/ \____/|__|   |__|   "
				puts "        \/     \/          \/     \/          \/     \/|__|                        "
				puts ""
				
			end
			def ascii_products
				puts "__________                   .___             __      				"    
				puts "\______   \_______  ____   __| _/_ __   _____/  |_  ______    "
				puts " |     ___/\_  __ \/  _ \ / __ |  |  \_/ ___\   __\/  ___/    "
				puts " |    |     |  | \(  <_> ) /_/ |  |  /\  \___|  |  \___ \     "
				puts " |____|     |__|   \____/\____ |____/  \___  >__| /____  >    "
				puts "                              \/           \/          \/     "
				puts ""
			end
			def ascii_brands
				puts "                                           			"
				puts "__________                           .___  			"    
				puts "\______   \____________    ____    __| _/______ "
				puts " |    |  _/\_  __ \__  \  /    \  / __ |/  ___/ "
				puts " |    |   \ |  | \// __ \|   |  \/ /_/ |\___ \  "
				puts " |______  / |__|  (____  /___|  /\____ /____  > "
				puts "        \/             \/     \/      \/    \/  "
				puts ""	
			end
			if option == 1
				ascii_sales_report
			elsif option == 2 
				ascii_products
			elsif option == 3
				ascii_brands
			else
				puts "Current options are: 1 for sales report, 2 for products, and 3 for brands"
			end
		end
	
		def print_data
			def products_section

			end

			def brands_section
			end
			products_section
			brands_section
		end

		# ****** Call master methods here **************

		# Print "Sales Report" in ascii art
		print_heading(1)

		# Print today's date (included in Sales Report heading)

		# Print "Products" in ascii art
		print_heading(2)

		# For each product in the data set:
			# Print the name of the toy
			# Print the retail price of the toy
			# Calculate and print the total number of purchases
			# Calculate and print the total amount of sales
			# Calculate and print the average price the toy sold for
			# Calculate and print the average discount (% or $) based off the average sales price

		# Print "Brands" in ascii art
		print_heading(3)
		# For each brand in the data set:
		# Print the name of the brand
		# Count and print the number of the brand's toys we stock
		# Calculate and print the average price of the brand's toys
		# Calculate and print the total sales volume of all the brand's toys combined
	end # end of create_report method
	create_report
end # end of start method
start