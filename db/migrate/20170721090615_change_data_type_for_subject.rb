class ChangeDataTypeForSubject < ActiveRecord::Migration[5.0]
  def change
  	change_table :marks do |t|
      t.change :subject1, :integer
      t.change :subject2, :integer
      t.change :subject3, :integer
  end
end
end