json.array!(@teams) do |team|
  json.extract! team, :id, :nome
  json.url team_url(team, format: :json)
end
