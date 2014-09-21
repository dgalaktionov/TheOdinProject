json.array!(@events) do |event|
  json.extract! event, :id, :date, :place, :created_by_id
  json.url event_url(event, format: :json)
end
