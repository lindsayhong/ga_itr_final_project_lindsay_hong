class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.date :play_date
      t.time :tee_time
      t.string :course_name

      t.timestamps
    end
  end
end
