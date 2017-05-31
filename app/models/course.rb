class Course < ApplicationRecord
  has_many :outcomes
  has_many :lessons
  has_many :offerings
  has_many :guest_visits

  mount_uploader :image, ImageUploader

  def code_short
    code.to_s + ": " + short_title
  end
end
