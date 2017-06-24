puts "What is your hamster's name?"
name = gets.chomp

puts "On a scale of 1-10, how noisy is your hamster?"
volume = gets.chomp.to_i

puts "Hamster color?"
color = gets.chomp

puts "Estimated age? If unknown leave blank"
age = gets.chomp.to_i
	if age === 0
		age = nil
	end

puts "************Hamster ID 5000**************"
puts "name: #{name}"
puts "volume: #{volume}"
puts "color: #{color}"
puts "age: #{age}"
puts "************Hamster ID 5000**************"


