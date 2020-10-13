class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.string :email
      t.string :phone
      t.text :address

      t.timestamps
    end
  end
end
