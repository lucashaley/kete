class Programme < ApplicationRecord
  belongs_to :programme_lead, class_name: 'Instructor', foreign_key: :instructor_id

  has_many :students
end
