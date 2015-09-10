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

ActiveRecord::Schema.define(version: 20150906233840) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appls", force: :cascade do |t|
    t.text     "resume"
    t.text     "cover_letter"
    t.integer  "job_id"
    t.integer  "jobseeker_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "employers", force: :cascade do |t|
    t.text     "email"
    t.text     "name"
    t.text     "address"
    t.float    "latitude"
    t.float    "longitude"
    t.text     "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.text     "title"
    t.text     "location"
    t.float    "salary"
    t.text     "industry"
    t.text     "description"
    t.date     "closing_date"
    t.integer  "employer_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "jobseekers", force: :cascade do |t|
    t.text     "email"
    t.text     "name"
    t.text     "address"
    t.text     "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
