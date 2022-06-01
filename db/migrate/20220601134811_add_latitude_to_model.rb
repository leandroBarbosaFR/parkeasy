class AddLatitudeToModel < ActiveRecord::Migration[6.1]
  def change
    add_column :models, :latitude, :float
  end
end
