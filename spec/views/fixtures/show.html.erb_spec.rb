require 'spec_helper'

describe "fixtures/show" do
  before(:each) do
    @fixture = assign(:fixture, stub_model(Fixture,
      :hometeam => "Hometeam",
      :awayteam => "Awayteam",
      :game_id => 1,
      :week => 2,
      :matchhomescore => 3,
      :matchawayscore => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Hometeam/)
    rendered.should match(/Awayteam/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
  end
end
