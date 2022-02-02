class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :titre
      t.integer :nbChambre
      t.integer :nbCouchage
      t.text :description
      t.string :ville
      t.string :rue
      t.integer :numRue
      t.float :lat
      t.float :long
      t.float :prix
      t.text :photos

      t.timestamps
    end
  end
end
