class AddAddressToParkings < ActiveRecord::Migration[6.1]
  def change
    add_column :parkings, :address, :string
  end
end
