class CreateGuestVisits < ActiveRecord::Migration
  def change
    create_table :guest_visits do |t|
      t.references :guest_lecturer, index: true, foreign_key: true
      t.datetime :start
      t.datetime :end
      t.string :type
      t.integer :budget
      t.boolean :parking_needed
      t.boolean :pl_approved
      t.integer :course_code

      t.timestamps null: false
    end
  end
end
