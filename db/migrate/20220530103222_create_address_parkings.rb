class CreateAddressParkings < ActiveRecord::Migration[6.1]
  def change
    create_table :address_parkings do |t|
      t.string :address
      t.string :post_code
      t.string :city
      t.references :parking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
