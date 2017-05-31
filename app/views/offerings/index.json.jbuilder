json.array!(@offerings) do |offering|
  json.extract! offering, :id, :semester_id, :course_id, :instructor_id
  json.url offering_url(offering, format: :json)
end
