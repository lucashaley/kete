class Student < ApplicationRecord
  include Students::Fullname

  mount_uploader :image, ImageUploader

  has_many :pdps
  has_many :enrolments
  has_many :offerings, through: :enrolments
  has_many :issues, :dependent => :destroy

  accepts_nested_attributes_for :issues, :allow_destroy => true

  def id_name
    id.to_s + ": " + full_name
  end
end
