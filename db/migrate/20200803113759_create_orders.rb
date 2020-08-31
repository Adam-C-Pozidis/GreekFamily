class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :address
      t.string :phone
      t.string :name_ordered
      t.boolean :completed?
      t.boolean :delivered?
      t.decimal :total_price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
