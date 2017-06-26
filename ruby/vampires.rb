puts "candidates to be checked?"
	
	candidates = gets.chomp.to_i

	i = 0

	until i >= candidates do

		puts "********************************Vampire Checker*****************************"

		puts "Please record any and all allergies below, type 'done' to finish the form!"
		allergy = gets.chomp
		while true
			if ((allergy == "sunshine") || (allergy == "garlic"))
				puts "Probably a vampire."
				i += 1
				break
			elsif (allergy == "done")
				puts "What is your name?"
				vampire_name = gets.chomp

				puts "What year were you born? (yyyy)"
				vampire_year = gets.chomp.to_i

				puts "How old are you?"
				vampire_age = gets.chomp.to_i

				puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
				garlic_answer = gets.chomp

				puts "Would you like to enroll in the company’s health insurance? (y/n)"
				insurance_answer = gets.chomp

				if ((2016 - vampire_age != vampire_year) && (garlic_answer == "y") && (insurance_answer == "y"))
						puts "Probably not a vampire."
		
					elsif ((vampire_name.include? "ula") || (vampire_name.include? "fang"))
						puts "Definitely a Vampire!"

					elsif ((2016 - vampire_age != vampire_year) && (garlic_answer == "n") && (insurance_answer == "n"))
						puts " Almost certainly a vampire."

					elsif ((2016 - vampire_age != vampire_year) || (garlic_answer =="n") || (insurance_answer == "n"))
						puts "Probably a vampire."

					else
						puts "Results inconclusive."
					end
				i += 1
			break
			else 
				allergy = gets.chomp
			end
		end
	end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."