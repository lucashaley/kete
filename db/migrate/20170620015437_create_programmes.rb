class CreateProgrammes < ActiveRecord::Migration[5.0]
  def change
    create_table :programmes do |t|
      t.string :title
      t.references :instructor, foreign_key: true

      t.timestamps
    end
  end
end
