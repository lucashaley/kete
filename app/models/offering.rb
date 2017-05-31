class Offering < ApplicationRecord
  belongs_to :semester
  belongs_to :course
  belongs_to :instructor
  has_many :enrolments
  has_many :students, through: :enrolments
  has_one :lab
  has_many :workshops

  accepts_nested_attributes_for :enrolments
  accepts_nested_attributes_for :workshops
  # accepts_nested_attributes_for :students

  def title
    semester.code.to_s + "_" + course.code.to_s
  end

  def full_title
    title + ": " + course.short_title
  end
end
