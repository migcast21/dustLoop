class ChangeBackFirstName < ActiveRecord::Migration[7.0]
  def change
    rename_column :friends, :artist_name, :first_name
  end
end
