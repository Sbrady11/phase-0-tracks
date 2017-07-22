// Reverse Function PseudoCode!
// Take in a string
// Take the length of the string, iterate over the string starting from the end
// Add the letter to a new string
// Print the string

function reverse(word) {
	var new_str = ""
	for (var i = word.length - 1; i >= 0; i--){
		new_str += word[i]
	}
	return new_str;
}

reversed_string = reverse("hello");

if (1==1){
	console.log(reversed_string);
} else {
	console.log("false");
}
