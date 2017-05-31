class Issue < ApplicationRecord
  belongs_to :student
  belongs_to :instructor

  accepts_nested_attributes_for :student
end
