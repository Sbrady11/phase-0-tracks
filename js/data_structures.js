//Horse colors and names
var colors = ["red", "blue", "green", "yellow"];

var horse_names = ["Dexter", "Wilhelm", "Duncan", "Floyd"];

colors.push("orange");

horse_names.push("Sam");

//Horse maker
var colored_horses = {};

for (var i = 0; i <= horse_names.length; i++) {
	colored_horses[horse_names[i]] = colors[i];
}

//Cars

function Car(make, model, year){
	this.make = make;
	this.model = model;
	this.year = year;

	this.honk = function() {
		console.log(model + ": aroogah")
	}
}

var ml320 = new Car("Mercedes", "ML320", 2009)
var defender = new Car("Land Rover", "Defender", 1967)

ml320.honk();
defender.honk();