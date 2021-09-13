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

ActiveRecord::Schema.define(version: 2021_09_13_174525) do

  create_table "language_sounds", force: :cascade do |t|
    t.integer "language_id"
    t.integer "sound_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["language_id"], name: "index_language_sounds_on_language_id"
    t.index ["sound_id"], name: "index_language_sounds_on_sound_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "language_name"
    t.decimal "homophone_percent"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "phonemes", force: :cascade do |t|
    t.string "english_word"
    t.string "language_word"
    t.integer "language_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["language_id"], name: "index_phonemes_on_language_id"
  end

  create_table "sounds", force: :cascade do |t|
    t.string "sound"
    t.string "sound_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "phonemes", "languages"
end
