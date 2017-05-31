class CreateOfferings < ActiveRecord::Migration
  def change
    create_table :offerings do |t|
      t.references :semester, index: true, foreign_key: true
      t.references :course, index: true, foreign_key: true
      t.references :instructor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
