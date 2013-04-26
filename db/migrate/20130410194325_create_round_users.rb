class CreateRoundUsers < ActiveRecord::Migration
  def change
    create_table :round_users do |t|
      t.integer :user_id
      t.integer :round_id

      t.timestamps
    end
  end
end
