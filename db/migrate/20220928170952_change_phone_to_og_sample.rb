class ChangePhoneToOgSample < ActiveRecord::Migration[7.0]
  def change
    rename_column :friends, :phone, :og_sample
  end
end
