class Major < ApplicationRecord
  belongs_to :coordinator, class_name: 'Instructor', foreign_key: :instructor_id
end
