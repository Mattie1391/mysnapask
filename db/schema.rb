ActiveRecord::Schema.define(version: 2022_06_25_223121) do

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "status"
    t.text "description"
    t.date "duration"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
