class AddCreatedByToRounds < ActiveRecord::Migration
  def change
    add_column :rounds, :created_by, :integer
  end
end
