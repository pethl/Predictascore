require 'spec_helper'

describe "fixtures/index" do
  before(:each) do
    assign(:fixtures, [
      stub_model(Fixture,
        :hometeam => "Hometeam",
        :awayteam => "Awayteam",
        :game_id => 1,
        :week => 2,
        :matchhomescore => 3,
        :matchawayscore => 4
      ),
      stub_model(Fixture,
        :hometeam => "Hometeam",
        :awayteam => "Awayteam",
        :game_id => 1,
        :week => 2,
        :matchhomescore => 3,
        :matchawayscore => 4
      )
    ])
  end

  it "renders a list of fixtures" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Hometeam".to_s, :count => 2
    assert_select "tr>td", :text => "Awayteam".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
