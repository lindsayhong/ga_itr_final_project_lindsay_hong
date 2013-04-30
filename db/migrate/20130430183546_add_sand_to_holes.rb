class AddSandToHoles < ActiveRecord::Migration
  def change
    add_column :holes, :sand, :integer
  end
end
