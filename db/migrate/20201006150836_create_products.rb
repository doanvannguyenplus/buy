class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.text :highlights
      t.string :composition
      t.integer :price
      t.boolean :status
      t.references :color, null: false, foreign_key: true
      t.references :size, null: false, foreign_key: true
      t.references :categori, null: false, foreign_key: true
      t.references :gender, null: false, foreign_key: true
      t.references :type, null: false, foreign_key: true
      t.references :campaign, null: false, foreign_key: true
      t.references :collection, null: false, foreign_key: true
      t.references :designer, null: false, foreign_key: true
      t.references :mix, null: false, foreign_key: true
      t.references :sale, null: false, foreign_key: true

      t.timestamps
    end
  end
end
