class UpdateComment < ActiveRecord::Migration[5.1]
  def change
    remove_column :comments, :comment_status 
  end
end
