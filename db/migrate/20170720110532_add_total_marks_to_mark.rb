class AddTotalMarksToMark < ActiveRecord::Migration[5.0]
  def change
    add_column :marks, :total_marks, :integer
  end
end
