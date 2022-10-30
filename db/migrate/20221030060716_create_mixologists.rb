class CreateMixologists < ActiveRecord::Migration[5.2]
  def change
    create_table :mixologists do |t|
      t.text :name
      t.text :image

      t.timestamps
    end
  end
end
