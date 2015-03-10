class CreateStaticPages < ActiveRecord::Migration
  def change
    create_table :static_pages do |t|
      t.string :title
      t.string :body
      t.string :author

      t.timestamps null: false
    end
  end
end
