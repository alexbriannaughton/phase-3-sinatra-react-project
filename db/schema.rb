# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_11_17_181912) do

  create_table "houses", force: :cascade do |t|
    t.string "name"
    t.string "image_link"
    t.string "location"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "text"
    t.string "rating"
    t.integer "user_id"
    t.integer "house_id"
    t.index ["house_id"], name: "index_reviews_on_house_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
  end

end
