# encoding: UTF-8

class Round < ActiveRecord::Base
	belongs_to :game
	serialize :deck, Array
	serialize :player_cards, Array
	serialize :dealer_cards, Array

	after_initialize do
		self.deck = %w[♠ ♥ ♦ ♣].product((1..13).to_a).map(&:join).shuffle
		self.credits = 100
		self.status = 'playing'
	end

	def play
		self.player_cards << deck.shift
		self.dealer_cards << deck.shift
		save
	end
end
