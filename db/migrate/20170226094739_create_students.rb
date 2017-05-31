class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.integer :student_id
      t.string :email

      t.timestamps null: false
    end
  end
end
