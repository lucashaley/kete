class Major < ApplicationRecord
  belongs_to :coordinator, class_name: 'Instructor', foreign_key: :instructor_id

  has_many :students
end
