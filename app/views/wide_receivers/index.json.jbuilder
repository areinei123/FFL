json.array!(@wide_receivers) do |wide_receiver|
  json.extract! wide_receiver, :id, :player_name, :touchdowns, :yards, :receptions, :week
  json.url wide_receiver_url(wide_receiver, format: :json)
end
