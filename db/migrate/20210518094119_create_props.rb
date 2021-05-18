class CreateProps < ActiveRecord::Migration[6.0]
  def change
    create_table :props do |t|
      t.string :category
      t.string :name
      t.boolean :availability
      t.string :description
      t.integer :price
      t.references :movie, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
