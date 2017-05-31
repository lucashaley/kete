json.array!(@items) do |item|
  json.extract! item, :id, :lesson_id, :order, :title, :detail, :resources, :duration
  json.url item_url(item, format: :json)
end
