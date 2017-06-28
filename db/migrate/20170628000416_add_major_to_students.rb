class AddMajorToStudents < ActiveRecord::Migration[5.0]
  def change
    add_reference :students, :major, foreign_key: true
  end
end
