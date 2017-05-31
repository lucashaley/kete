class ChangeDayOfWeekToInteger < ActiveRecord::Migration[5.0]
  def self.up
    change_column :sessions, :day_of_week, :integer
  end

  def self.down
    change_column :sessions, :day_of_week, :string
  end
end
