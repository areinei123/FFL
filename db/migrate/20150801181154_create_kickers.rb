class CreateKickers < ActiveRecord::Migration
  def change
    create_table :kickers do |t|
      t.string :player_name
      t.integer :week
      t.integer :kicks_made
      t.integer :kicks_attempted

      t.timestamps null: false
    end
  end
end
