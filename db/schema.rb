# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110408161851) do

  create_table "entries", :force => true do |t|
    t.integer  "plan_item_id"
    t.date     "entry_for"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plan_items", :force => true do |t|
    t.string   "name",                :limit => 64
    t.text     "description"
    t.boolean  "positiveconnotation",               :default => true
    t.string   "points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
