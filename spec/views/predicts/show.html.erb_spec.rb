require 'spec_helper'

describe "predicts/show" do
  before(:each) do
    @predict = assign(:predict, stub_model(Predict,
      :user_id => 1,
      :fixture_id => 2,
      :game_id => 3,
      :awayscore => 4,
      :homescore => 5,
      :points => 6,
      :correct_result => 7,
      :right_result => 8,
      :val_right_result => 9,
      :closest_to_home => 10,
      :closest_to_away => 11,
      :exact_home_score => 12,
      :exact_away_score => 13,
      :exact_result => 14,
      :val_exact_result => 15,
      :val_closest_to_home => 16,
      :val_closest_to_away => 17
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/6/)
    rendered.should match(/7/)
    rendered.should match(/8/)
    rendered.should match(/9/)
    rendered.should match(/10/)
    rendered.should match(/11/)
    rendered.should match(/12/)
    rendered.should match(/13/)
    rendered.should match(/14/)
    rendered.should match(/15/)
    rendered.should match(/16/)
    rendered.should match(/17/)
  end
end
