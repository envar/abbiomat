class PostImage < ActiveRecord::Base
  belongs_to :post

  has_attached_file :image, styles: { thumb: "100x100>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  before_save :extract_dimensions
  serialize :dimensions

  private

  # Retrieves dimensions for image assets
  # @note Do this after resize operations to account for auto-orientation.
  def extract_dimensions
    tempfile = image.queued_for_write[:original]
    unless tempfile.nil?
      geometry = Paperclip::Geometry.from_file(tempfile)
      self.dimensions = [geometry.width.to_i, geometry.height.to_i]
    end
  end

end
