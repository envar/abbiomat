class AddPostIdToPostImages < ActiveRecord::Migration
  def change
    add_column :post_images, :post_id, :integer
    add_index :post_images, :post_id
  end
end
