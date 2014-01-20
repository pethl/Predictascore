class Predict < ActiveRecord::Base
  attr_accessible :awayscore, :closest_to_away, :closest_to_home, :correct_result, :exact_away_score, :exact_home_score, :exact_result, :fixture_id, :game_id, :homescore, :points, :right_result, :user_id, :val_closest_to_away, :val_closest_to_home, :val_exact_result, :val_right_result

   before_save :get_game_id

  def self.import(file)
    row_id = Array.new
     CSV.foreach(file.path, headers: true) do |row|
        rid = Predict.create! row.to_hash
        row_id << rid.id
      end
      return row_id
  end
  
    def self.updaterow(row_id, game)
      row_id.each do |id|
        a = Predict.find(id)
        Predict.update(id, :game_id => game)
      end
    end
  
    def total_score  #no longer used as calc written to database in fixtures_controller, left as example
      total_score = self.closest_to_home.to_i + self.closest_to_away.to_i + self.right_result.to_i + self.exact_home_score.to_i + self.exact_away_score.to_i + self.exact_result.to_i
    end
  
  private
   def get_game_id
     fid = self.fixture_id
     f = Fixture.find(fid)
     gid = f.game_id
     self.game_id = gid
  end

end
