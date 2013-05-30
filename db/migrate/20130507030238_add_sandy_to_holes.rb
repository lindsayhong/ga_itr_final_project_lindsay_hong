class AddSandyToHoles < ActiveRecord::Migration
  def change
    add_column :holes, :sandy, :string
  end
end
