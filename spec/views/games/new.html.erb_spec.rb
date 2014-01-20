require 'spec_helper'

describe "games/new" do
  before(:each) do
    assign(:game, stub_model(Game,
      :name => "MyString",
      :lastyear => false,
      :current => false
    ).as_new_record)
  end

  it "renders new game form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => games_path, :method => "post" do
      assert_select "input#game_name", :name => "game[name]"
      assert_select "input#game_lastyear", :name => "game[lastyear]"
      assert_select "input#game_current", :name => "game[current]"
    end
  end
end