json.extract! issue, :id, :student_id, :title, :content, :critical, :instructor_id, :created_at, :updated_at
json.url issue_url(issue, format: :json)
