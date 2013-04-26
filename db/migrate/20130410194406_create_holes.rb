class CreateHoles < ActiveRecord::Migration
  def change
    create_table :holes do |t|
      t.integer :hole_number
      t.string :fairway
      t.string :green
      t.integer :chips
      t.integer :putts
      t.integer :score
      t.integer :over_under

      t.timestamps
    end
  end
end
