class CreateWideReceivers < ActiveRecord::Migration
  def change
    create_table :wide_receivers do |t|
      t.string :player_name
      t.integer :touchdowns
      t.integer :yards
      t.integer :receptions
      t.integer :week

      t.timestamps null: false
    end
  end
end
