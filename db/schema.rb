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

ActiveRecord::Schema.define(:version => 20111123173323) do

  create_table "ballots", :force => true do |t|
    t.integer  "code",       :null => false
    t.string   "name",       :null => false
    t.string   "address",    :null => false
    t.float    "lng",        :null => false
    t.float    "lat",        :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.integer  "uid",        :limit => 8, :null => false
    t.integer  "b_id",                    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["uid", "b_id"], :name => "index_users_on_f_id_and_b_id"

end
