class RemoveLatitudeFromModel < ActiveRecord::Migration[6.1]
  def change
    remove_column :models, :latitude, :float
  end
end
