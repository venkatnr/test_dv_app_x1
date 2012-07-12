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

ActiveRecord::Schema.define(:version => 20120709145101) do

  create_table "iterations", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "project_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.date     "start_date"
    t.date     "end_date"
  end

  add_index "iterations", ["project_id"], :name => "index_iterations_on_project_id"

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "tasks", :force => true do |t|
    t.string   "name"
    t.string   "ttype"
    t.string   "disposition"
    t.string   "acceptor"
    t.float    "estimated_hours"
    t.text     "description"
    t.integer  "userst_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "tasks", ["userst_id"], :name => "index_tasks_on_userst_id"

  create_table "usersts", :force => true do |t|
    t.string   "name"
    t.string   "disposition"
    t.string   "customer"
    t.string   "tracker"
    t.string   "status"
    t.integer  "priority"
    t.integer  "order"
    t.float    "estimated_hours"
    t.string   "description"
    t.integer  "iteration_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "usersts", ["iteration_id"], :name => "index_usersts_on_iteration_id"

end
