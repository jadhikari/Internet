# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_28_060636) do

  create_table "internet_orders", force: :cascade do |t|
    t.integer "sn"
    t.datetime "apply_date"
    t.string "name"
    t.string "fb_id"
    t.integer "phone_number"
    t.integer "postal_code"
    t.string "house_type"
    t.datetime "kouji_date"
    t.string "plan"
    t.string "link"
    t.text "conclusion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "dob"
  end

end
