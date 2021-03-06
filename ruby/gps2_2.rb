# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
	# define food_list method
	# convert input to array, then split said array
	# create new list of food items
	# generate empty hash
	# assign key to food item, and quantity (value) = 1
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: Hash 
def food_list(list)
	food_hash = {}
	food_array = list.split(' ')
	food_array.each do |food_item| 
		food_hash[food_item] = 1
	end
	food_hash
end

#puts test_list = ('carrots apple pizza cereal')

#grocery_list = food_list(test_list)
############################################################################
# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: 
	# define add_food method
	# pass food_list as 'list'
	# add new data to hash

# output: New updated hash
def add_item(shopping_list, item, quantity)
	shopping_list[item] = quantity
	shopping_list
end

#puts add_item(grocery_list, 'pear', 2)
############################################################################
# Method to remove an item from the list
# input: list, item name
# steps:
	# define remove_food_item method
	# take in list (updated)
	# remove desired item (key)
def remove_item(grocery_list, item)
	grocery_list.delete(item)
	grocery_list
end

#puts remove_item(grocery_list, 'cereal')


# output: Hash list with item removed 
############################################################################
# Method to update the quantity of an item
# input: list, item, updated quantity 
# steps: 
	# define update_quant method
	# take in list (updated)
	# figure out item (+ quantity) that should be updated
	# update
def update_quantity(grocery_list, item, quantity)
	grocery_list[item] = quantity
	grocery_list
end

#puts update_quantity(grocery_list, 'apple', 20)

# output: Hash list with quantity updated 
############################################################################
# Method to print a list and make it look pretty
# input: Hash list
# steps:
	# define printing method
	# print and format the list 
def print_pretty(grocery_list)
	grocery_list.each do |item, quantity| 
		puts "you bought #{quantity} #{item}"
	end
end

#print_pretty(grocery_list)

# output: Pretty list
############################################################################
# Test Cases
puts "***********************Test Cases!***********************************"
test_food_list = {}

add_item(test_food_list, 'tomatoes', 3)
add_item(test_food_list, 'lemonade', 2)
add_item(test_food_list, 'onions', 1)
add_item(test_food_list, 'ice cream', 4)
add_item(test_food_list, 'tomatoes', 1)

print_pretty(test_food_list)

puts "********************************************************************"

remove_item(test_food_list, 'lemonade')

print_pretty(test_food_list)

puts "********************************************************************"

update_quantity(test_food_list, 'ice cream', 1)

print_pretty(test_food_list)

puts "********************************************************************"

# What did you learn about pseudocode from working on this challenge?

	# That there are quite a lot of different styles that you can use, but go for readability, ALWAYS!

# What are the tradeoffs of using arrays and hashes for this challenge?
	
	# Strange question as we used what was necessary to complete the assignment, in that the array was used to take in a string, then, as more information was needed, we applied said string to a hash format.

# What does a method return?

	# The last line of code that you pass in, or your return statement.

# What kind of things can you pass into methods as arguments?

	# Lots of things! Any type of value, or even other methods and objects!

# How can you pass information between methods?
	
	# Through the creation of a variable the holds onto the output from different methods.

# What concepts were solidified in this challenge, and what concepts are still confusing?

	# Honestly the way that we passed info from method to method was solidified, as for confusion, none so far. Yet I am going to try and refractor this a wee bit, especially with my newfound knowledge of instance variables and scope.