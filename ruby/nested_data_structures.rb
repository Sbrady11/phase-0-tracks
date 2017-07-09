puts "***************NESTED ARRAY*********************"

highway = {
	:'SUV' => ['Simon', 'James'],
	:'Sedan' =>  ['Laura', 'Bill'],
	:'Limo' => ['Leslie', 'Jill'],
	:'traffic_lights' => {
		:'intersection_1' => '2',
		:'intersection_2' => '1'
	}

}

p highway[:'SUV'][1]

p highway[:'Sedan']

highway[:'Sedan'].push('Skeletor')

p highway[:'Sedan']

highway[:'Sedan'][2] = 'HeMan'

p highway[:'Sedan'] 

p highway[:'traffic_lights'][:'intersection_2']

puts "***************NESTED ARRAY*********************"