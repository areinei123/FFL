class CreateDefenses < ActiveRecord::Migration
  def change
    create_table :defenses do |t|
      t.string :player_name
      t.integer :week
      t.integer :tackles
      t.integer :sacks
      t.integer :interceptions

      t.timestamps null: false
    end
  end
end
