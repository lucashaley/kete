json.array!(@enrolments) do |enrolment|
  json.extract! enrolment, :id
  json.url enrolment_url(enrolment, format: :json)
end
