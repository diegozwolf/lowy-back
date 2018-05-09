class CreateDeals < ActiveRecord::Migration[5.2]
  def change
    create_table :deals do |t|
      t.string :title
      t.text :description
      t.float :desc
      t.references :store, foreign_key: true

      t.timestamps
    end
  end
end
