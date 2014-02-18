class CreateRoundPlayers < ActiveRecord::Migration
  def change
    create_table :round_players do |t|
    	t.integer :round_id
      t.integer :player_id
      t.integer :player_handicap
      t.timestamps
    end
  end
end
