class AddAttachmentJobImageToJobs < ActiveRecord::Migration
  def self.up
    change_table :jobs do |t|
      t.attachment :job_image
    end
  end

  def self.down
    remove_attachment :jobs, :job_image
  end
end
