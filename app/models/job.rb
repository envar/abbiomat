class Job < ActiveRecord::Base
  has_many :job_images, dependent: :destroy

  validates :title, :body, :author, presence: true
  validates :title, uniqueness: true
end
