class Post < ActiveRecord::Base
  has_many :post_images, dependent: :destroy
  accepts_nested_attributes_for :post_images, allow_destroy: true

  validates :title, :body, :author, presence: true
  validates :title, uniqueness: true
end
