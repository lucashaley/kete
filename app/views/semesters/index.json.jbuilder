json.array!(@semesters) do |semester|
  json.extract! semester, :id, :code, :start, :end
  json.url semester_url(semester, format: :json)
end
