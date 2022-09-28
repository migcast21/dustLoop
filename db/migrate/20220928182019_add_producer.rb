class AddProducer < ActiveRecord::Migration[7.0]
  def change
    add_column :friends, :producer, :string
  end
end
