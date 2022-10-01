class AddCityToParkings < ActiveRecord::Migration[6.1]
  def change
    add_column :parkings, :city, :string
  end
end
