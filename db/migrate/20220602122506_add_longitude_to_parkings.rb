class AddLongitudeToParkings < ActiveRecord::Migration[6.1]
  def change
    add_column :parkings, :longitude, :float
  end
end
