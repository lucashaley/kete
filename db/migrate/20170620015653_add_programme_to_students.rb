class AddProgrammeToStudents < ActiveRecord::Migration[5.0]
  def change
    add_reference :students, :programme, foreign_key: true
  end
end
