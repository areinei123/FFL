json.array!(@running_backs) do |running_back|
  json.extract! running_back, :id, :player_name, :touchdowns, :yards, :receptions, :week
  json.url running_back_url(running_back, format: :json)
end
