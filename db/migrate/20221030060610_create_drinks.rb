  class CreateDrinks < ActiveRecord::Migration[5.2]
    def change
      create_table :drinks do |t|
        t.text :name
        t.text :ingredients
        t.integer :mixologist_id
        t.text :image
        
        t.timestamps
      end
    end
  end
