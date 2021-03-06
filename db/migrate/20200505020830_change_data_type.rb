class ChangeDataType < ActiveRecord::Migration[6.0]
  def change
    change_column :educations, :start_date, 'date using cast(start_date AS date)'
    change_column :educations, :end_date, 'date using cast(end_date AS date)'
    change_column :experiences, :start_date, 'date using cast(start_date AS date)'
    change_column :experiences, :end_date, 'date using cast(end_date AS date)'
  end
end



# "data USING CAST (start_data AS data)"
#change_column :educations, :start_date, data USING CAST (start_data AS data)