require 'spec_helper'

describe "games/edit" do
  before(:each) do
    @game = assign(:game, stub_model(Game,
      :name => "MyString",
      :lastyear => false,
      :current => false
    ))
  end

  it "renders the edit game form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => games_path(@game), :method => "post" do
      assert_select "input#game_name", :name => "game[name]"
      assert_select "input#game_lastyear", :name => "game[lastyear]"
      assert_select "input#game_current", :name => "game[current]"
    end
  end
end
