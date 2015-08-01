json.array!(@defenses) do |defense|
  json.extract! defense, :id, :player_name, :week, :tackles
  json.url defense_url(defense, format: :json)
end
