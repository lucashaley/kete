class AddEnrollmentYearToStudents < ActiveRecord::Migration
  def change
    add_column :students, :enrollment_year, :integer
  end
end
