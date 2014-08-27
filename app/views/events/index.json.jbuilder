json.array!(@events) do |event|
  json.extract! event, :id, :title, :date, :location, :image_url, :description
  json.url event_url(event, format: :json)
end
