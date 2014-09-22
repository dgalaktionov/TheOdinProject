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

ActiveRecord::Schema.define(version: 20140922101909) do

  create_table "events", force: true do |t|
    t.datetime "date"
    t.string   "place"
    t.integer  "created_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["created_by_id"], name: "index_events_on_created_by_id"

  create_table "invites", id: false, force: true do |t|
    t.integer "guest_id"
    t.integer "event_id"
    t.boolean "attends"
  end

  add_index "invites", ["event_id"], name: "index_invites_on_event_id"
  add_index "invites", ["guest_id"], name: "index_invites_on_guest_id"

  create_table "users", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
