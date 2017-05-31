class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.references :course, index: true, foreign_key: true
      t.integer :week
      t.string :title
      t.text :description
      t.text :rationale
      t.text :requisites
      t.text :directed_study
      t.text :reading

      t.timestamps null: false
    end
  end
end
