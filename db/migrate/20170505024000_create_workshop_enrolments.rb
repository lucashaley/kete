class CreateWorkshopEnrolments < ActiveRecord::Migration[5.0]
  def change
    create_table :workshop_enrolments do |t|
      t.references :enrolment, foreign_key: true
      t.references :workshop, foreign_key: true

      t.timestamps
    end
  end
end
