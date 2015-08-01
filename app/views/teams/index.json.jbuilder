json.array!(@teams) do |team|
  json.extract! team, :id, :team_name, :week, :qb_total_yards, :qb_total_completes, :qb_total_attempts, :qb_total_touchdowns, :qb_total_fumbles, :qb_total_interceptions, :rb_total_yards, :rb_total_receptions, :rb_total_touchdowns, :wr_total_yards, :wr_total_receptions, :wr_total_touchdowns, :te_total_yards, :te_total_receptions, :te_total_touchdowns, :kicker_total_points, :def_total_sacks, :def_total_tackles, :def_total_interceptions
  json.url team_url(team, format: :json)
end
