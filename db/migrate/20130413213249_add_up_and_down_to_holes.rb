class AddUpAndDownToHoles < ActiveRecord::Migration
  def change
    add_column :holes, :up_and_down, :string
  end
end
