class CreateJobImages < ActiveRecord::Migration
  def change
    create_table :job_images do |t|

      t.timestamps null: false
    end
  end
end
