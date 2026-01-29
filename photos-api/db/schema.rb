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

ActiveRecord::Schema[8.1].define(version: 2026_01_29_032431) do
  create_table "images", force: :cascade do |t|
    t.string "alt"
    t.string "avg_color"
    t.datetime "created_at", null: false
    t.integer "external_id"
    t.integer "height"
    t.integer "photographer_id", null: false
    t.datetime "updated_at", null: false
    t.string "url"
    t.integer "width"
    t.index ["photographer_id"], name: "index_images_on_photographer_id"
  end

  create_table "photographers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "photographer"
    t.integer "photographer_id"
    t.string "photographer_url"
    t.datetime "updated_at", null: false
  end

  create_table "srcs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "image_id", null: false
    t.string "landscape"
    t.string "large"
    t.string "large2x"
    t.string "medium"
    t.string "original"
    t.string "portrait"
    t.string "small"
    t.string "tiny"
    t.datetime "updated_at", null: false
    t.index ["image_id"], name: "index_srcs_on_image_id"
  end

  add_foreign_key "images", "photographers"
  add_foreign_key "srcs", "images"
end
