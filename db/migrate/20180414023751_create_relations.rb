class CreateRelations < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :comment_status_id, :integer
  end
end
