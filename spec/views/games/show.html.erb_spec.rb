require 'spec_helper'

describe "games/show" do
  before(:each) do
    @game = assign(:game, stub_model(Game,
      :name => "Name",
      :lastyear => false,
      :current => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/false/)
    rendered.should match(/false/)
  end
end
