class AddAvgMarksToMarks < ActiveRecord::Migration[5.0]
  def change
    add_column :marks, :avg_marks, :integer
  end
end
