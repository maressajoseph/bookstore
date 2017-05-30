class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.references :profile, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
