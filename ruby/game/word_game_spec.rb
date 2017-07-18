require_relative 'word_game'

describe WordGame do 
	let (:game) {WordGame.new}

	expect(game.start).to eq true 


end