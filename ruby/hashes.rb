#User enters details into hash as follows
	#name, age, number of children, decor theme, and pets?, 
#Program prints back to the user with the relevant data
#Allow the user to update information
	#If no desired changes, it will skip
	#If there are changes, prompt for the wanted section to change, receive new data
#Print the updated hash

def interior_design
	puts "***********************Design Program***************************"
	interior_design_hash = {}

	puts "Welcome, please enter your name"
	interior_design_hash[:client_name] = gets.chomp.capitalize

	puts "Thank you, how old are you?"
	interior_design_hash[:client_age] = gets.chomp.to_i

	puts "Thank you again, number of children?"
	interior_design_hash[:client_num_children] = gets.chomp.to_i

	puts "Desired decor theme?"
	interior_design_hash[:client_decor_theme]= gets.chomp.capitalize

	puts "Do you have pets? (y/n)"
	pets_answer = gets.chomp

	if pets_answer == "y"
		interior_design_hash[:client_pets]= true
	else
		interior_design_hash[:client_pets]= false
	end
	p interior_design_hash

	puts "need to make changes? enter desired key,[age, number of children, decor, or pets] or 'none' to terminate"
	changes_answer = gets.chomp

	if changes_answer != 'none'
		puts "very well, what would you like to change about your #{changes_answer}?"
			if changes_answer == "client name"
				interior_design_hash[:client_name] = gets.chomp.capitalize
			p interior_design_hash
			
			elsif changes_answer == "age"
				interior_design_hash[:client_age] = gets.chomp.to_i
			p interior_design_hash
			
			elsif changes_answer == "number of children"
				interior_design_hash[:client_num_children] = gets.chomp.to_i
			p interior_design_hash

			elsif changes_answer == "decor"
				interior_design_hash[:client_decor_theme]= gets.chomp.capitalize
			p interior_design_hash

			elsif changes_answer == "pets"
				pets_answer = gets.chomp
				if pets_answer == "y"
					interior_design_hash[:client_pets]= true
				else
					interior_design_hash[:client_pets]= false
				end
			p interior_design_hash
			end
		else puts "got it!"
	end


end

interior_design