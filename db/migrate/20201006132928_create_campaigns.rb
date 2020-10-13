class CreateCampaigns < ActiveRecord::Migration[6.0]
  def change
    create_table :campaigns do |t|
      t.string :name
      t.text :description
      t.string :image
      t.boolean :status

      t.timestamps
    end
  end
end
