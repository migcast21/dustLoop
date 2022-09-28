class ChangeLastNameToCurrentSource < ActiveRecord::Migration[7.0]
  def change
    rename_column :friends, :last_name, :current_source
  end
end
