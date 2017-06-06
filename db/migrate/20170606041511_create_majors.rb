class CreateMajors < ActiveRecord::Migration[5.0]
  def change
    create_table :majors do |t|
      t.string :title
      t.references :instructor, foreign_key: true

      t.timestamps
    end
  end
end
