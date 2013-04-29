class AddRoundHandicapToRoundUsers < ActiveRecord::Migration
  def change
    add_column :round_users, :round_handicap, :integer
  end
end
