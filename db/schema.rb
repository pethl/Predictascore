# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140111211511) do

  create_table "fixtures", :force => true do |t|
    t.datetime "matchdate"
    t.string   "hometeam"
    t.string   "awayteam"
    t.integer  "game_id"
    t.time     "ko"
    t.integer  "week"
    t.integer  "matchhomescore"
    t.integer  "matchawayscore"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "games", :force => true do |t|
    t.string   "name"
    t.date     "startdate"
    t.date     "enddate"
    t.boolean  "lastyear"
    t.boolean  "current"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "predicts", :force => true do |t|
    t.integer  "user_id"
    t.integer  "fixture_id"
    t.integer  "game_id"
    t.integer  "awayscore"
    t.integer  "homescore"
    t.integer  "points"
    t.integer  "correct_result"
    t.integer  "right_result"
    t.integer  "val_right_result"
    t.integer  "closest_to_home"
    t.integer  "closest_to_away"
    t.integer  "exact_home_score"
    t.integer  "exact_away_score"
    t.integer  "exact_result"
    t.integer  "val_exact_result"
    t.integer  "val_closest_to_home"
    t.integer  "val_closest_to_away"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "wins"
    t.boolean  "admin"
    t.string   "password"
    t.string   "password_confirmation"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "remember_token"
    t.string   "password_digest"
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
