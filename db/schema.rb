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

ActiveRecord::Schema.define(version: 20160406135150) do

  create_table "addresses", force: :cascade do |t|
    t.text     "current"
    t.text     "permanent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "student_id"
  end

  create_table "courses", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enrollments", force: :cascade do |t|
    t.text     "number"
    t.text     "month"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "course_id"
    t.integer  "student_id"
  end

  create_table "students", force: :cascade do |t|
    t.text     "first_name"
    t.text     "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "is_alumnus"
  end

  create_table "teachers", force: :cascade do |t|
    t.text     "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "slug"
  end

end
