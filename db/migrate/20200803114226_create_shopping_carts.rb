class CreateShoppingCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :shopping_carts do |t|
      t.decimal :total_price
      t.references :user, null: true, foreign_key: true

      t.timestamps
    end
  end
end
