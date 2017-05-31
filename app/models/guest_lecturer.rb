class GuestLecturer < ApplicationRecord
  include Students::Fullname
  include Kete::Url

  mount_uploader :image, ImageUploader

  has_many :guest_visits

end
