class AddDefaultValueToParking < ActiveRecord::Migration[6.1]
  def change
    change_column_default :parkings, :available, false
  end
end
