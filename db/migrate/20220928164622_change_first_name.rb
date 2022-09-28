class ChangeFirstName < ActiveRecord::Migration[7.0]
  def change
    rename_column :friends, :first_name, :artist_name
  end
end
