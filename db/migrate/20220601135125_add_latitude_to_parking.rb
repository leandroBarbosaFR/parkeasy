class AddLatitudeToParking < ActiveRecord::Migration[6.1]
  def change
    add_column :parkings, :latitude, :float
  end
end
