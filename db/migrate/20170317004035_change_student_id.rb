class ChangeStudentId < ActiveRecord::Migration
  def change
    rename_column :students, :student_id, :massey_id
  end
end
