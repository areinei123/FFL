json.array!(@kickers) do |kicker|
  json.extract! kicker, :id, :player_name, :week, :kicks_made, :kicks_attempted
  json.url kicker_url(kicker, format: :json)
end
