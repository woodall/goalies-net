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

ActiveRecord::Schema.define(version: 20141108173658) do

  create_table "goals", force: true do |t|
    t.string   "name"
    t.string   "category"
    t.string   "circle"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "quarter"
    t.integer  "user_id"
    t.boolean  "completed",      default: false
    t.boolean  "deleted",        default: false
    t.date     "completed_date"
  end

  create_table "logs", force: true do |t|
    t.text     "body"
    t.string   "title"
    t.integer  "user_id",    default: 1
    t.integer  "goal_id",    default: 1
    t.boolean  "deleted",    default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "logs", ["goal_id"], name: "index_logs_on_goal_id"
  add_index "logs", ["user_id"], name: "index_logs_on_user_id"

  create_table "tasks", force: true do |t|
    t.datetime "snooze"
    t.string   "name"
    t.boolean  "completed",  default: false
    t.boolean  "deleted",    default: false
    t.integer  "user_id",    default: 1
    t.integer  "goal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tasks", ["goal_id"], name: "index_tasks_on_goal_id"
  add_index "tasks", ["user_id"], name: "index_tasks_on_user_id"

end
