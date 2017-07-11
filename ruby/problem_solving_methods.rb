def simple_search(array, search_value)
	nil_holder = nil
	i = 0
	array.map do |number|
		if number == search_value
			nil_holder = i
			return i
		else
			i += 1
		end
	end
	return nil_holder
end

simple_search([1,2,3], 3)

def fibonacci_num(number)
	fib_array = []
	number.times do |number|
		if number < 2
			fib_array << number
		else
			fib_array << fib_array[-1] + fib_array[-2]
		end
	end
	return fib_array
end 

fibonacci_num(5)

#Bubble Sort Algorithm (https://www.sitepoint.com/sorting-algorithms-ruby/)
#simple yet slow, good for small arrays and amounts of data

# their example for help! I couldnt for the life of me get mine to work... SO! I'm going back to the drawing board...

def bubble_sort(array)
	n = array.length
	
	loop do
		swapped = false

	(n-1).times do |i|
		if array[i] > array[i+1]
			array[i], array[i+1] = array[i+1], array[i]
		swapped = true
		end
	end
		break if not swapped
	end
	array
end

