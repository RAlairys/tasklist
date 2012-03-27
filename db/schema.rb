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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120322065035) do

  create_table "defaultprojects", :force => true do |t|
    t.integer  "project_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "defaultprojects", ["project_id"], :name => "index_defaultprojects_on_project_id"

  create_table "managers", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "phone"
    t.string   "photo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.integer  "priority"
    t.text     "description"
    t.string   "website"
    t.string   "logo"
    t.string   "businessplan"
    t.integer  "manager_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "projects", ["manager_id"], :name => "index_projects_on_manager_id"

  create_table "tasks", :force => true do |t|
    t.integer  "project_id"
    t.integer  "manager_id"
    t.float    "position"
    t.text     "description"
    t.text     "done_so_far"
    t.text     "need_to_do"
    t.text     "issues"
    t.text     "additional_comments"
    t.date     "started"
    t.date     "next_followup"
    t.date     "completed"
    t.boolean  "done"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "tasks", ["manager_id"], :name => "index_tasks_on_manager_id"
  add_index "tasks", ["project_id"], :name => "index_tasks_on_project_id"

end
