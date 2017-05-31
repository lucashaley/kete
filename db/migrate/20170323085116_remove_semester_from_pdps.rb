class RemoveSemesterFromPdps < ActiveRecord::Migration
  def change
    remove_column :pdps, :semester_id, :integer
  end
end
