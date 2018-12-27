class CreateFields < ActiveRecord::Migration[5.2]
  def change
    create_table :fields do |t|
      t.string :name
      t.text :description
      t.integer :capacity
      t.integer :price_per_hour
      t.references :sport, foreign_key: true

      t.timestamps
    end
  end
end
