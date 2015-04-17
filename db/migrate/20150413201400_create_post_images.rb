class CreatePostImages < ActiveRecord::Migration
  def change
    create_table :post_images do |t|

      t.timestamps null: false
    end
  end
end
