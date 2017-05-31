json.array!(@courses) do |course|
  json.extract! course, :id, :code, :title, :short_title, :description, :overview
  json.url course_url(course, format: :json)
end
