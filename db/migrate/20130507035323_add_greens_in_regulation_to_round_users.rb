class AddGreensInRegulationToRoundUsers < ActiveRecord::Migration
  def change
    add_column :round_users, :greens_in_regulation, :float
  end
end
