require 'spec_helper'

describe Game do
	# subject = Game.new
  context "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:credits) }
    it { should have_many :rounds }
  end
  
  context "defaults" do
    its(:credits){ should be 1000 }
    its(:name){ should be_nil }
    its(:rounds){ should have(1).round }
  end

  describe "play" do
    before do
      @game = Game.make!
      @game.current_round.should_receive(:play).and_return(true)
      @game.play
    end
    it{ 1.should == 1 }

  end

end