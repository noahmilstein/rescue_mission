ActiveRecord::Schema.define(version: 20160920175041) do

  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.string   "description",                 null: false
    t.boolean  "best",        default: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "question_id",                 null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "title",       null: false
    t.string   "description", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["title"], name: "index_questions_on_title", unique: true, using: :btree
  end

end
