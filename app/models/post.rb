class Post < ActiveRecord::Base
  has_many :images, as: :imageable, dependent: :destroy
  accepts_nested_attributes_for :images, :reject_if => lambda { |a| a[:name.blank?] }
  validates :title, :body, :author, presence: true
  validates :title, uniqueness: true
end
