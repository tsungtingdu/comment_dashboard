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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180414025223) do

  create_table "comment_statuses", force: :cascade do |t|
    t.string "comment_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer "lh_comment_id", limit: 8
    t.integer "user_id", limit: 8
    t.string "user_name"
    t.integer "section_id", limit: 8
    t.string "section_name"
    t.integer "lesson_id", limit: 8
    t.string "lesson_name"
    t.integer "unit_id", limit: 8
    t.string "unit_name"
    t.integer "assignment_id", limit: 8
    t.string "title"
    t.text "content"
    t.integer "replied_comment_id", limit: 8
    t.text "replied_comment_title"
    t.text "replied_comment_content"
    t.integer "upvote"
    t.integer "total_following"
    t.date "date_comment"
    t.time "time_comment"
    t.string "thread_type"
    t.string "comment_catagory"
    t.string "comment_responsibility"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "comment_status_id"
  end

end
