class AddPostCodeToParkings < ActiveRecord::Migration[6.1]
  def change
    add_column :parkings, :post_code, :string
  end
end
