# encoding: UTF-8
class Deck < ActiveRecord::Base
	serialize :cards

	after_initialize do
		self.cards = %w[♠ ♥ ♦ ♣].product((1..13).to_a).map(&:join).shuffle
	end
end
