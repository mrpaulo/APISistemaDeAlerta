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

ActiveRecord::Schema.define(version: 20170510181032) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alerts", force: :cascade do |t|
    t.bigint   "type_alert",             null: false
    t.string   "title",       limit: 20, null: false
    t.text     "description",            null: false
    t.string   "photo",       limit: 25
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "districts", force: :cascade do |t|
    t.string   "name_district",         limit: 40, null: false
    t.point    "localization_district",            null: false
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "users", force: :cascade do |t|
    t.bigint   "type_user",                                     null: false
    t.string   "name_user",          limit: 40,                 null: false
    t.string   "phone",              limit: 16
    t.point    "localization_user"
    t.string   "password",           limit: 12,                 null: false
    t.boolean  "notification_phone",            default: false
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
  end

end
