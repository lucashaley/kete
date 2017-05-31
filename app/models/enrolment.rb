class Enrolment < ApplicationRecord
  belongs_to :offering
  belongs_to :student
  has_one :enrolment

  accepts_nested_attributes_for :offering
  accepts_nested_attributes_for :student
end
