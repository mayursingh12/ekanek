class Blog < ApplicationRecord
  mount_uploader :file, FileUploader

  belongs_to :user
  LIMIT = 10

  validates :title, presence: true
  validates :description, presence: true
  validates :file, presence: true

  def self.generate_link(url)
    Link.shorten(url)
  end

end
