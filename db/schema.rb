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

ActiveRecord::Schema.define(version: 20150801172113) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "leagues", force: :cascade do |t|
    t.string  "league_name",    null: false
    t.integer "number_players", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "team_name"
    t.integer  "week"
    t.integer  "qb_total_yards"
    t.integer  "qb_total_completes"
    t.integer  "qb_total_attempts"
    t.integer  "qb_total_touchdowns"
    t.integer  "qb_total_fumbles"
    t.integer  "qb_total_interceptions"
    t.integer  "rb_total_yards"
    t.integer  "rb_total_receptions"
    t.integer  "rb_total_touchdowns"
    t.integer  "wr_total_yards"
    t.integer  "wr_total_receptions"
    t.integer  "wr_total_touchdowns"
    t.integer  "te_total_yards"
    t.integer  "te_total_receptions"
    t.integer  "te_total_touchdowns"
    t.integer  "kicker_total_points"
    t.integer  "def_total_sacks"
    t.integer  "def_total_tackles"
    t.integer  "def_total_interceptions"
    t.integer  "user_id"
    t.integer  "league_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
