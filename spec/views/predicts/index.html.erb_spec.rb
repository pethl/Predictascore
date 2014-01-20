require 'spec_helper'

describe "predicts/index" do
  before(:each) do
    assign(:predicts, [
      stub_model(Predict,
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
      ),
      stub_model(Predict,
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
      )
    ])
  end

  it "renders a list of predicts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => 10.to_s, :count => 2
    assert_select "tr>td", :text => 11.to_s, :count => 2
    assert_select "tr>td", :text => 12.to_s, :count => 2
    assert_select "tr>td", :text => 13.to_s, :count => 2
    assert_select "tr>td", :text => 14.to_s, :count => 2
    assert_select "tr>td", :text => 15.to_s, :count => 2
    assert_select "tr>td", :text => 16.to_s, :count => 2
    assert_select "tr>td", :text => 17.to_s, :count => 2
  end
end
