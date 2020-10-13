class CreateDesigners < ActiveRecord::Migration[6.0]
  def change
    create_table :designers do |t|
      t.string :name
      t.text :description
      t.string :image
      t.boolean :status

      t.timestamps
    end
  end
end
