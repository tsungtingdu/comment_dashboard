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

ActiveRecord::Schema.define(version: 20180414023751) do

  create_table "comment_statuses", force: :cascade do |t|
    t.string "comment_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "lh_comment_id"
    t.bigint "user_id"
    t.string "user_name"
    t.bigint "section_id"
    t.string "section_name"
    t.bigint "lesson_id"
    t.string "lesson_name"
    t.bigint "unit_id"
    t.string "unit_name"
    t.bigint "assignment_id"
    t.string "title"
    t.text "content"
    t.bigint "replied_comment_id"
    t.text "replied_comment_title"
    t.text "replied_comment_content"
    t.integer "upvote"
    t.integer "total_following"
    t.date "date_comment"
    t.time "time_comment"
    t.string "thread_type"
    t.string "comment_catagory"
    t.string "comment_status"
    t.string "comment_responsibility"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "comment_status_id"
  end

end
