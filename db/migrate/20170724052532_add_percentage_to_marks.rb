class AddPercentageToMarks < ActiveRecord::Migration[5.0]
  def change
    add_column :marks, :percentage, :string
  end
end
