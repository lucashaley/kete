class Computer < ApplicationRecord
  has_many :software_packages
  belongs_to :lab

  attr_accessor :its_code
end
