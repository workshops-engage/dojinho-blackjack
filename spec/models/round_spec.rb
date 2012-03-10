require 'spec_helper'

describe Round do
  let(:full_deck_count){ 13*4 }
  it {should belong_to :game }
  its(:credits){ should == 100 }
  its(:status){ should == 'playing'}

  describe "deck" do
  	its(:deck){ should be_an_instance_of Array }
  	its(:deck){ should have(full_deck_count).string }

  	its(:deck) { should_not == Round.new.deck }
  end
  
  describe "play" do
  	subject{ Round.make! }
  	before do
  		subject.play
  	end
  	its(:deck){ should have(full_deck_count - 2).string }
  	its(:player_cards){ should have(1).string }
  	its(:dealer_cards){ should have(1).string }
  end

end
