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

ActiveRecord::Schema.define(version: 20140713120044) do

  create_table "hobbies", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hobbies_people", id: false, force: true do |t|
    t.integer "hobby_id"
    t.integer "person_id"
  end

  add_index "hobbies_people", ["hobby_id"], name: "index_hobbies_people_on_hobby_id"
  add_index "hobbies_people", ["person_id"], name: "index_hobbies_people_on_person_id"

  create_table "jobs", force: true do |t|
    t.string   "title"
    t.string   "company"
    t.string   "position_id"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "jobs", ["person_id"], name: "index_jobs_on_person_id"

  create_table "people", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "login"
    t.string   "pass"
  end

  create_table "personal_infos", force: true do |t|
    t.float    "height"
    t.float    "weight"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "personal_infos", ["person_id"], name: "index_personal_infos_on_person_id"

  create_table "salary_ranges", force: true do |t|
    t.float    "min_salary"
    t.float    "max_salary"
    t.integer  "job_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "salary_ranges", ["job_id"], name: "index_salary_ranges_on_job_id"

end
