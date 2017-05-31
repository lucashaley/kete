class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :code
      t.string :title
      t.string :short_title
      t.text :description
      t.text :overview

      t.timestamps null: false
    end
  end
end
