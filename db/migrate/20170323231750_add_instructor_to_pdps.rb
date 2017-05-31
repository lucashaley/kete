class AddInstructorToPdps < ActiveRecord::Migration
  def change
    add_reference :pdps, :instructor, index: true, foreign_key: true
  end
end
