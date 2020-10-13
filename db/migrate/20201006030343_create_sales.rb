class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.string :name
      t.string :title
      t.text :description
      t.string :image
      t.boolean :status

      t.timestamps
    end
  end
end
