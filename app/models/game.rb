class Game < ActiveRecord::Base
  attr_accessible :current, :enddate, :lastyear, :name, :startdate
  
      default_scope order('startdate DESC')
  
  def self.import(file)
     CSV.foreach(file.path, headers: true) do |row|
        Game.create! row.to_hash
    end
  end
  
end
