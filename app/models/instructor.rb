class Instructor < ApplicationRecord
  include Students::Fullname

  mount_uploader :image, ImageUploader

  validates :first_name, :last_name, presence: true

  has_many :offerings
  has_many :pdps
  has_many :issues
  has_one :major
  has_one :programme

  def self.search_by_full_name(search)
    where("first_name LIKE :search OR last_name LIKE :search", search: "%#{search}%")
  end
end
