require 'spec_helper'

describe "fixtures/edit" do
  before(:each) do
    @fixture = assign(:fixture, stub_model(Fixture,
      :hometeam => "MyString",
      :awayteam => "MyString",
      :game_id => 1,
      :week => 1,
      :matchhomescore => 1,
      :matchawayscore => 1
    ))
  end

  it "renders the edit fixture form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => fixtures_path(@fixture), :method => "post" do
      assert_select "input#fixture_hometeam", :name => "fixture[hometeam]"
      assert_select "input#fixture_awayteam", :name => "fixture[awayteam]"
      assert_select "input#fixture_game_id", :name => "fixture[game_id]"
      assert_select "input#fixture_week", :name => "fixture[week]"
      assert_select "input#fixture_matchhomescore", :name => "fixture[matchhomescore]"
      assert_select "input#fixture_matchawayscore", :name => "fixture[matchawayscore]"
    end
  end
end
