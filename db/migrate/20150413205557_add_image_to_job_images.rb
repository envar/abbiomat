class AddImageToJobImages < ActiveRecord::Migration
  def self.up
    add_attachment :job_images, :image
  end
  def self.down
    remove_attachment :job_images, :image
  end
end
