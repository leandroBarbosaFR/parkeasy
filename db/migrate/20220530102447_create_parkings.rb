class CreateParkings < ActiveRecord::Migration[6.1]
  def change
    create_table :parkings do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.boolean :available
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
