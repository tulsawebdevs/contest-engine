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

ActiveRecord::Schema.define(:version => 20111008222636) do

  create_table "contests", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "pdf"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "sponsor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entries", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image"
    t.string   "proposal"
    t.integer  "votes"
    t.boolean  "approval"
    t.integer  "contest_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phases", :force => true do |t|
    t.integer  "contest_id"
    t.text     "title"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sponsors", :force => true do |t|
    t.string   "name"
    t.string   "logo"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
