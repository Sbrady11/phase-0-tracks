// Longest Array function------------------------------
 
// Psuedocode
// Take in the array of phrases
// Initialize the search variable (the number comparing the strings I.e, start it at 0, pass the first array length, compare)
	// If the new phrase is longer, store that phrase as the current longest, compare with the next, and repeat
// Once looped through, return the longest array
function longestPhrase(array) {
	var longestString = ""
	var searchLength = 0

	for (var i = 0; i < array.length; i++){
		if (array[i].length > searchLength){
			searchLength = array[i].length;
			longestString = array[i];
		}
	}
	return longestString;
}
//Driver code
var testArray = ["long phrase","longest phrase!","longer phrase"]
var testArray1 = ["duck", "cow"]

console.log(longestPhrase(testArray))
console.log(longestPhrase(testArray1))

//Find a key-value match function----------------------
//Takes in two objects, checks to see if the objects share at least one key value pair, returns true or false

//Psuedocode
// Take in two objects 
// Determine if key 1 and key 2 in object one and two are equivalent
// If yes, return true
// Else, return false

function objectMatcher(obj1, obj2) {
	
}

