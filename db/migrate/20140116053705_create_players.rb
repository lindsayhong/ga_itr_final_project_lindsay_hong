class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :player_first_name
      t.string :player_last_name
      t.integer :player_handicap

      t.timestamps
    end
  end
end
