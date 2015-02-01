json.array!(@events) do |event|
  json.extract! event, :id, :name, :ip_address, :eventtime
  json.url event_url(event, format: :json)
end