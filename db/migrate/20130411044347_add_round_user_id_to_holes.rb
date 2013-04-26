class AddRoundUserIdToHoles < ActiveRecord::Migration
  def change
    add_column :holes, :round_user_id, :integer
  end
end
