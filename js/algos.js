// Longest Array function
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

var testArray = ["long phrase","longest phrase!","longer phrase"]

console.log(longestPhrase(testArray))