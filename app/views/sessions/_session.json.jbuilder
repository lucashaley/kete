json.extract! session, :id, :day_of_week, :time_start, :time_end, :lab, :workshop, :created_at, :updated_at
json.url session_url(session, format: :json)
