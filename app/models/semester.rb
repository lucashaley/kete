class Semester < ApplicationRecord
  has_many :offerings

  scope :active, -> { where("end > ?", Date.today) }
end
