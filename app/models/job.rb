class Job < ActiveRecord::Base
  has_many :post_images, dependent: :destroy

  validates :title, :body, :author, presence: true
  validates :title, uniqueness: true
end
