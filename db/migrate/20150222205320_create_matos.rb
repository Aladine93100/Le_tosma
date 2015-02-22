class CreateMatos < ActiveRecord::Migration
  def change
    create_table :matos do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.boolean :availability, default: true

      t.timestamps null: false
    end
  end
end
