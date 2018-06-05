class AddDefaultToImagePath < ActiveRecord::Migration[5.1]
  def change
      change_column :cheeses, :image_path, :string, :default => "https://s3-us-west-2.amazonaws.com/cheeses/cheeses/cheese_pics/000/000/025/original/colby.jpg"
  end
end
