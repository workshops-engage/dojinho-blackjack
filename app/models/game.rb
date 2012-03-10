class Game < ActiveRecord::Base
  validates :name, presence: true
  validates :credits, presence: true
  validates :rounds, presence: true
  has_many :rounds

  after_initialize do
 	self.rounds << Round.new
  end

	def current_round
		@current_round ||= self.rounds.order('id').last
	end

	def play
		# current_round.play
	end


end