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

ActiveRecord::Schema.define(version: 20170318002452) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "breeds", force: :cascade do |t|
    t.string   "name",       limit: 80
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "dogs", force: :cascade do |t|
    t.string   "name_dog",      limit: 80
    t.string   "genero",        limit: 80
    t.string   "castrated",     limit: 20
    t.date     "date_of_birth"
    t.string   "status"
    t.string   "owners_name",   limit: 80
    t.string   "phone"
    t.date     "last_visit"
    t.integer  "breed_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["breed_id"], name: "index_dogs_on_breed_id", using: :btree
  end

  add_foreign_key "dogs", "breeds"
end
