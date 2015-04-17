class AddDimensionsToPostImages < ActiveRecord::Migration
  def change
    add_column :post_images, :dimensions, :string
  end
end
