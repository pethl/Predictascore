class CreateFixtures < ActiveRecord::Migration
  def change
    create_table :fixtures do |t|
      t.datetime :matchdate
      t.string :hometeam
      t.string :awayteam
      t.integer :game_id
      t.time :ko
      t.integer :week
      t.integer :matchhomescore
      t.integer :matchawayscore

      t.timestamps
    end
  end
end
