json.array!(@qbs) do |qb|
  json.extract! qb, :id, :player_name, :week, :pass_attempts, :pass_completes, :touchdowns, :interceptions, :fumbles
  json.url qb_url(qb, format: :json)
end
