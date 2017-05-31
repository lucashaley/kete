json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :course_id, :week, :title, :description, :rationale, :requisites, :directed_study, :reading
  json.url lesson_url(lesson, format: :json)
end
