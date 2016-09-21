require 'factory_girl_rails'

FactoryGirl.define do
  factory :question do
    sequence(:title) { |n| "Ubernostrum #{n}" * 20 }
    sequence(:description) { |n| "Waffles #{n}" * 100 }
  end

  factory :answer do
  end

end

# create_table "answers", force: :cascade do |t|
#   t.string   "description",                 null: false
#   t.boolean  "best",        default: false
#   t.datetime "created_at",                  null: false
#   t.datetime "updated_at",                  null: false
# end

# class Answer < ActiveRecord::Base
#   validates :description, presence: true, length: { minimum: 50 }
# end

# create_table "questions", force: :cascade do |t|
#   t.string   "title",       null: false
#   t.string   "description", null: false
#   t.datetime "created_at",  null: false
#   t.datetime "updated_at",  null: false
#   t.index ["title"], name: "index_questions_on_title", unique: true, using: :btree
# end

# class Question < ActiveRecord::Base
#   validates :title, presence: true, length: { minimum: 40 }, uniqueness: true
#   validates :description, presence: true, length: { minimum: 150 }
# end
