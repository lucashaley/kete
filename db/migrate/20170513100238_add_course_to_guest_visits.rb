class AddCourseToGuestVisits < ActiveRecord::Migration[5.0]
  def change
    add_reference :guest_visits, :course, foreign_key: true
    remove_column :guest_visits, :course_code, :integer
    remove_column :guest_visits, :offering_id, :reference
  end
end
