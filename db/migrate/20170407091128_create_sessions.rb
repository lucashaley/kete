class CreateSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :sessions do |t|
      t.string :day_of_week
      t.time :time_start
      t.time :time_end
      t.references :lab, foreign_key: true
      t.references :workshop, foreign_key: true

      t.timestamps
    end
  end
end
