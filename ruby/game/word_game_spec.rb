require_relative 'word_game'

describe WordGame do 
	let (:game) {WordGame.new}

	it "takes in a word to check" do
		expect(game.initialize("word"))
	end

	it "checks characters" do
		expect(checker('w'))
	end

	it "checks if a character is valid" do
		expect(game.character_is_valid?('i')).to eq true
	end


end