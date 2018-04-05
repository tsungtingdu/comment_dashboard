class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.bigint :lh_comment_id
      t.bigint :user_id
      t.string :user_name
      t.bigint :section_id
      t.string :section_name
      t.bigint :lesson_id
      t.string :lesson_name
      t.bigint :unit_id
      t.string :unit_name
      t.bigint :assignment_id
      t.string :title
      t.text :content
      t.bigint :replied_comment_id
      t.text :replied_comment_title
      t.text :replied_comment_content
      t.integer :upvote
      t.integer :total_following
      t.date :date_comment
      t.time :time_comment
      t.string :thread_type
      t.string :comment_catagory  
      t.string :comment_status  
      t.string :comment_responsibility
      t.timestamps
    end
  end
end

