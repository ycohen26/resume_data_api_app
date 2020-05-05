class CreateEducations < ActiveRecord::Migration[6.0]
  def change
    create_table :educations do |t|
      t.string :start_date
      t.string :end_date
      t.string :degree
      t.string :university
      t.string :details
      t.integer :student_id

      t.timestamps
    end
  end
end
