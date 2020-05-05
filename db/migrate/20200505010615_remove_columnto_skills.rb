class RemoveColumntoSkills < ActiveRecord::Migration[6.0]
  def change
   remove_column  :student_skills,  :integer, :string
  end
end
