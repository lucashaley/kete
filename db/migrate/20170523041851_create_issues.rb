class CreateIssues < ActiveRecord::Migration[5.0]
  def change
    create_table :issues do |t|
      t.references :student, foreign_key: true
      t.string :title
      t.text :content
      t.boolean :critical
      t.references :instructor, foreign_key: true

      t.timestamps
    end
  end
end
