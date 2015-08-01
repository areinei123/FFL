class AddLeagues < ActiveRecord::Migration
  def change
    create_table :leagues do |t|
      t.string :league_name, null: false
      t.integer :number_players, null: false
    end
  end
end
