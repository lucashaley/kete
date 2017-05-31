class Lesson < ApplicationRecord
  belongs_to :course
  has_many :items

  enum type: [:lecture, :workshop, :guest_lecture]
end
