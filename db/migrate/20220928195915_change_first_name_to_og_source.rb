class ChangeFirstNameToOgSource < ActiveRecord::Migration[7.0]
  def change
    rename_column :friends, :first_name, :original_source
  end
end
