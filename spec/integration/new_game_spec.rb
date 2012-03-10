require 'spec_helper'
# 
describe "new game", :js => true do

  it "creates a new game" do
    visit root_path
    # page.status_code.should == 200

    within("#new_game") do
      fill_in 'Name', :with => 'George'
      click_button 'Create Game'
    end

    assert page.has_content?("Bem vindo George")
    
    # current_path.should == '/password/new'

    # click_link 'Sign in'
  end
end