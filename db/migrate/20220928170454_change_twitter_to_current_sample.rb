class ChangeTwitterToCurrentSample < ActiveRecord::Migration[7.0]
  def change
    rename_column :friends, :twitter, :current_sample
  end
end
