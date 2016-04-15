json.array!(@replies) do |reply|
  json.extract! reply, :id, :r_um, :r_dois
  json.url reply_url(reply, format: :json)
end
