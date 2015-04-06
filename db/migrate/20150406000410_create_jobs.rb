class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :body
      t.string :author
      t.date :closing_date

      t.timestamps null: false
    end
  end
end
