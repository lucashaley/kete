class AddWorkshopToEnrolments < ActiveRecord::Migration[5.0]
  def change
    add_reference :enrolments, :workshop, foreign_key: true
  end
end
