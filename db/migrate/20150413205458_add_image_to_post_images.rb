class AddImageToPostImages < ActiveRecord::Migration
  def self.up
    add_attachment :post_images, :image
  end
  def self.down
    remove_attachment :post_images, :image
  end
end
