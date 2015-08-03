class CreateQbs < ActiveRecord::Migration
  def change
    create_table :qbs do |t|
      t.string :player_name
      t.integer :week
      t.integer :pass_attempts
      t.integer :pass_completes
      t.integer :touchdowns
      t.integer :interceptions
      t.integer :fumbles

      t.timestamps null: false
    end
  end
end
