class CreateOrderIterms < ActiveRecord::Migration[6.0]
  def change
    create_table :order_iterms do |t|
      t.references :order, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :price
      t.integer :quantity

      t.timestamps
    end
  end
end
