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

ActiveRecord::Schema.define(:version => 20111211224947) do

  create_table "attribute_types", :force => true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "desires", :force => true do |t|
    t.string   "description"
    t.string   "desire_type"
    t.boolean  "done"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
  end

  create_table "ezpieces", :force => true do |t|
    t.string   "ezname"
    t.boolean  "ezcontroller"
    t.boolean  "ezmodel"
    t.boolean  "ezview"
    t.boolean  "ezdb"
    t.boolean  "ezseed"
    t.text     "ezattributes"
    t.text     "ezresources"
    t.text     "ezrelationships"
    t.integer  "ezproject_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ezprojects", :force => true do |t|
    t.integer  "ezuser_id"
    t.string   "name"
    t.string   "mvp"
    t.text     "ezbuslogic"
    t.text     "ezuserstories"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "desire_id"
  end

  create_table "model_attributes", :force => true do |t|
    t.string   "name"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "part_id"
    t.integer  "attribute_type_id"
  end

  create_table "notes", :force => true do |t|
    t.integer  "desire_id"
    t.text     "notetext"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "part_id"
  end

  create_table "parts", :force => true do |t|
    t.integer  "project_id"
    t.string   "name"
    t.string   "description"
    t.boolean  "controller_role"
    t.boolean  "model_role"
    t.boolean  "view_role"
    t.boolean  "seed_role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "mvp"
    t.string   "github"
    t.string   "heroku"
    t.string   "mockup"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
