class Pdp < ApplicationRecord
  belongs_to :student
  belongs_to :instructor

  mount_uploader :scan, PdfUploader
end
