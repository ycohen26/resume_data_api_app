class ChangeShortBioToText < ActiveRecord::Migration[6.0]
  def change
    change_column :students, :short_bio, :text
  end
end
