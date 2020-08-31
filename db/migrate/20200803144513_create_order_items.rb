class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.decimal :subtotal
      t.references :menu_item, null: false, foreign_key: true
      t.references :order, null: true, foreign_key: true
      t.references :shopping_cart, null: false, foreign_key: true

      t.timestamps
    end
  end
end
