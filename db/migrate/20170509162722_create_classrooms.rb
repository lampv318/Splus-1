class CreateClassrooms < ActiveRecord::Migration[5.0]
  def change
    create_table :classrooms do |t|
      t.string :class_code
      t.references :course, foreign_key: true
      t.references :semester, foreign_key: true

      t.timestamps
    end
  end
end
