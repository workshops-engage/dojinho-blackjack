require 'spec_helper'

describe "games/new.html.erb" do

  subject{ rendered }

  before do
  	assign(:game, Game.new)
  	render
  end
  it{ should render_template("new") }
  it{ should have_selector("h1", text: "Welcome to BJ") }
  it{ should have_field("Name") }
  it{ should have_button("play") }

end