class AddLongitudeToModel < ActiveRecord::Migration[6.1]
  def change
    add_column :models, :longitude, :float
  end
end
