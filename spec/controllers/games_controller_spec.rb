require 'spec_helper'

describe GamesController do
  # render_views

  subject{ response }
  

  describe "POST Create" do
  	before{ post 'create', game: {name: "juan"} }
  	it{ should redirect_to(game_path(assigns(:game)))}
  	it "should create a game" do
  		assigns(:game).should_not be_new_record
  	end
  end


  describe "GET 'new'" do
    before{ get 'new' }
    it{ should be_success }
    it("@game should be assigned") do
      assigns(:game).should_not be_nil
    end
  end

  describe "GET 'show'" do
  	let(:game){ Game.make! }
  	before{ get 'show', id: game}
  	it{ should be_success }
  	it "@game should be assigned" do
  		assigns(:game).should eq game
  	end
  end

end