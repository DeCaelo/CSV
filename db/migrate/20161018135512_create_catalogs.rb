class CreateCatalogs < ActiveRecord::Migration[5.0]
  def change
    create_table :catalogs do |t|
      t.string :Catalog
      t.string :Artist
      t.string :Title
      t.string :Label
      t.integer :Format
      t.integer :Rating
      t.date :Released
      t.integer :Release_id
      t.string :Notes
      t.datetime :Registered

      t.timestamps
    end
  end
end
