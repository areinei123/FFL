json.array!(@tight_ends) do |tight_end|
  json.extract! tight_end, :id, :player_name, :week, :touchdowns, :yards, :receptions
  json.url tight_end_url(tight_end, format: :json)
end
