class CreateTightEnds < ActiveRecord::Migration
  def change
    create_table :tight_ends do |t|
      t.string :player_name
      t.integer :week
      t.integer :touchdowns
      t.integer :yards
      t.integer :receptions

      t.timestamps null: false
    end
  end
end
