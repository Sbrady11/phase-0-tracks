require_relative 'solo_game'

describe Game do
	let(:game) {Game.new}

	it "randomizes a computer hand" do
		expect(game.generate_computer_hand). to eq "rock"||"paper"||"scissors"
	end

	it "checks the hands of the player and the computer" do
		expect(game.check_hands(player_hand, generate_computer_hand)).to eq "true"||"false"
	end
end 
