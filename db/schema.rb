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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140817185341) do

  create_table "game_sessions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "active",     default: false
  end

  create_table "missions", force: true do |t|
    t.text     "name"
    t.text     "description"
    t.integer  "difficulty"
    t.integer  "exp"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "blocking"
    t.boolean  "starting",    default: false
    t.integer  "group"
  end

  create_table "next_missions", force: true do |t|
    t.integer  "mission_id"
    t.integer  "next_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sm_relations", force: true do |t|
    t.integer  "game_session_id"
    t.integer  "mission_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "st_relations", force: true do |t|
    t.integer  "game_session_id"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stm_relations", force: true do |t|
    t.integer  "st_relation_id"
    t.integer  "mission_id"
    t.boolean  "completed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
