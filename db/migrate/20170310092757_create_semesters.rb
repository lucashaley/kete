class CreateSemesters < ActiveRecord::Migration
  def change
    create_table :semesters do |t|
      t.string :code
      t.date :start
      t.date :end

      t.timestamps null: false
    end
  end
end
