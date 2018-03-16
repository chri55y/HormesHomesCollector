class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.string :address
      t.integer :score
      t.decimal :price
      t.integer :sqft
      t.text :description

      t.timestamps
    end
  end
end
