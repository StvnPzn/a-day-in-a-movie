class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :producer, :boolean, default: :false
    add_column :users, :address, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
end
