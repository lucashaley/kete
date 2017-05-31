class Lab < ApplicationRecord
  has_many :computers
  belongs_to :offering
  has_many :workshops
  has_many :sessions
end
