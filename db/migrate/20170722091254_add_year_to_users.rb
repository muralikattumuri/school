class AddYearToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :year, :integer
  end
end
