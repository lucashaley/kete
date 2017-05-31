class CreatePdps < ActiveRecord::Migration
  def change
    create_table :pdps do |t|
      t.references :student, index: true, foreign_key: true
      t.references :semester, index: true, foreign_key: true
      t.datetime :appointment
      t.text :review_student
      t.text :review_staff
      t.text :review_private
      t.text :preview_student
      t.text :preview_staff
      t.text :preview_private
      t.text :notes

      t.timestamps null: false
    end
  end
end
