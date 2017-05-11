class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :identify_number
      t.integer :role
      t.references :school, foreign_key: true

      t.timestamps
    end
    add_index :users, :identify_number
  end
end
