class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :address
      t.integer :phone
      t.string :name
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
