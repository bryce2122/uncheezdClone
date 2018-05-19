class AddImgPathToCheese < ActiveRecord::Migration[5.1]
  def change
    add_column :cheeses, :image_path, :string
  end
end
