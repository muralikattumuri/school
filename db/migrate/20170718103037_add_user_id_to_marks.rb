class AddUserIdToMarks < ActiveRecord::Migration[5.0]
  def change
    add_column :marks, :user_id, :integer
  end
end
