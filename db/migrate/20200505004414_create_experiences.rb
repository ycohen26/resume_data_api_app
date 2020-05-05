class CreateExperiences < ActiveRecord::Migration[6.0]
  def change
    create_table :experiences do |t|
      t.string :start_date
      t.string :end_date
      t.string :job_title
      t.string :company
      t.string :details
      t.integer :student_id

      t.timestamps
    end
  end
end
