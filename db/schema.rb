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

ActiveRecord::Schema.define(version: 20160217222803) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contact_opportunities", force: :cascade do |t|
    t.integer  "opportunity_id"
    t.integer  "contact_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "contact_opportunities", ["contact_id"], name: "index_contact_opportunities_on_contact_id", using: :btree
  add_index "contact_opportunities", ["opportunity_id"], name: "index_contact_opportunities_on_opportunity_id", using: :btree

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.text     "content"
    t.integer  "opportunity_id"
    t.integer  "contact_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "notes", ["contact_id"], name: "index_notes_on_contact_id", using: :btree
  add_index "notes", ["opportunity_id"], name: "index_notes_on_opportunity_id", using: :btree

  create_table "opportunities", force: :cascade do |t|
    t.string   "name"
    t.string   "position"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "contact_opportunities", "contacts"
  add_foreign_key "contact_opportunities", "opportunities"
  add_foreign_key "notes", "contacts"
  add_foreign_key "notes", "opportunities"
end
