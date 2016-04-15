json.array!(@dailies) do |daily|
  json.extract! daily, :id, :tipo, :data
  json.url daily_url(daily, format: :json)
end
