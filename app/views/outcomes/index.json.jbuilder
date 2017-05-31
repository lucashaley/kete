json.array!(@outcomes) do |outcome|
  json.extract! outcome, :id, :course_id, :order, :text, :criteria
  json.url outcome_url(outcome, format: :json)
end
