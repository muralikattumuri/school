class CreateMarks < ActiveRecord::Migration[5.0]
  def change
    create_table :marks do |t|
      t.string :subject1
      t.string :subject2
      t.string :subject3

      t.timestamps
    end
  end
end
