require 'spec_helper'

describe "predicts/new" do
  before(:each) do
    assign(:predict, stub_model(Predict,
      :user_id => 1,
      :fixture_id => 1,
      :game_id => 1,
      :awayscore => 1,
      :homescore => 1,
      :points => 1,
      :correct_result => 1,
      :right_result => 1,
      :val_right_result => 1,
      :closest_to_home => 1,
      :closest_to_away => 1,
      :exact_home_score => 1,
      :exact_away_score => 1,
      :exact_result => 1,
      :val_exact_result => 1,
      :val_closest_to_home => 1,
      :val_closest_to_away => 1
    ).as_new_record)
  end

  it "renders new predict form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => predicts_path, :method => "post" do
      assert_select "input#predict_user_id", :name => "predict[user_id]"
      assert_select "input#predict_fixture_id", :name => "predict[fixture_id]"
      assert_select "input#predict_game_id", :name => "predict[game_id]"
      assert_select "input#predict_awayscore", :name => "predict[awayscore]"
      assert_select "input#predict_homescore", :name => "predict[homescore]"
      assert_select "input#predict_points", :name => "predict[points]"
      assert_select "input#predict_correct_result", :name => "predict[correct_result]"
      assert_select "input#predict_right_result", :name => "predict[right_result]"
      assert_select "input#predict_val_right_result", :name => "predict[val_right_result]"
      assert_select "input#predict_closest_to_home", :name => "predict[closest_to_home]"
      assert_select "input#predict_closest_to_away", :name => "predict[closest_to_away]"
      assert_select "input#predict_exact_home_score", :name => "predict[exact_home_score]"
      assert_select "input#predict_exact_away_score", :name => "predict[exact_away_score]"
      assert_select "input#predict_exact_result", :name => "predict[exact_result]"
      assert_select "input#predict_val_exact_result", :name => "predict[val_exact_result]"
      assert_select "input#predict_val_closest_to_home", :name => "predict[val_closest_to_home]"
      assert_select "input#predict_val_closest_to_away", :name => "predict[val_closest_to_away]"
    end
  end
end
