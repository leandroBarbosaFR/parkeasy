class AddCoordinatesToAdressParkings < ActiveRecord::Migration[6.1]
  def change
    add_column :address_parkings, :latitude, :float
    add_column :address_parkings, :longitude, :float
  end
end
