class RemoveLongitudeFromModel < ActiveRecord::Migration[6.1]
  def change
    remove_column :models, :longitude, :float
  end
end
