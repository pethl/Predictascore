class Fixture < ActiveRecord::Base
  attr_accessible :awayteam, :game_id, :hometeam, :ko, :matchawayscore, :matchdate, :matchhomescore, :week
  
  default_scope order: 'fixtures.created_at ASC'
   
  TEAM_TYPES = ["--", "England", "France", "Ireland", "Italy", "Scotland", "Wales"]
  
  def full_fixture
    "#{hometeam} vs. #{awayteam} - #{(matchdate.strftime("%d %B, %Y"))}"
  end
  
  def self.import(file)
    row_id = Array.new
     CSV.foreach(file.path, headers: true) do |row|
        rid = Fixture.create! row.to_hash
        row_id << rid.id
        Rails.logger.debug("rid: #{row_id.inspect}")
      end
      return row_id
  end
  
  
  def self.updaterow(row_id, game)
    Rails.logger.debug("in update row method_rid: #{row_id.inspect}")
    row_id.each do |id|
      a = Fixture.find(id)
      Fixture.update(id, :game_id => game)
    end
  end
  
end
