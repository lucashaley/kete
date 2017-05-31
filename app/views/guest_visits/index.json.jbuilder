json.array!(@guest_visits) do |guest_visit|
  json.extract! guest_visit, :id, :guest_lecturer_id, :start, :end, :type, :budget, :parking_needed, :pl_approved, :course_code
  json.url guest_visit_url(guest_visit, format: :json)
end
