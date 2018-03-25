class CreatePropertyNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :property_notes do |t|
      t.integer :property_id
      t.text :note

      t.timestamps
    end
  end
end
