class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :team_name
      t.integer :week
      t.integer :qb_total_yards
      t.integer :qb_total_completes
      t.integer :qb_total_attempts
      t.integer :qb_total_touchdowns
      t.integer :qb_total_fumbles
      t.integer :qb_total_interceptions
      t.integer :rb_total_yards
      t.integer :rb_total_receptions
      t.integer :rb_total_touchdowns
      t.integer :wr_total_yards
      t.integer :wr_total_receptions
      t.integer :wr_total_touchdowns
      t.integer :te_total_yards
      t.integer :te_total_receptions
      t.integer :te_total_touchdowns
      t.integer :kicker_total_points
      t.integer :def_total_sacks
      t.integer :def_total_tackles
      t.integer :def_total_interceptions
      t.integer :user_id
      t.integer :league_id

      t.timestamps null: false
    end
  end
end
