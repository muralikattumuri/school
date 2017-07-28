class AddRolesToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :principal_role, :boolean,  default: false
    add_column :users, :faculty_role, :boolean,  default: false
    add_column :users, :student_role, :string,    default: true
  end
end
