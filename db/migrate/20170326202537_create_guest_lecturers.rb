class CreateGuestLecturers < ActiveRecord::Migration
  def change
    create_table :guest_lecturers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :website
      t.string :cell

      t.timestamps null: false
    end
  end
end
