json.array!(@pdps) do |pdp|
  json.extract! pdp, :id, :student_id, :appointment, :review_student, :review_staff, :preview_student, :preview_staff, :notes
  json.url pdp_url(pdp, format: :json)
end
