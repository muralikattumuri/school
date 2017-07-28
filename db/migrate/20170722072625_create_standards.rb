class CreateStandards < ActiveRecord::Migration[5.0]
  def change
    create_table :standards do |t|
      t.integer :standard
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
