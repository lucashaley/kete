class CreateOutcomes < ActiveRecord::Migration
  def change
    create_table :outcomes do |t|
      t.references :course, index: true, foreign_key: true
      t.integer :order
      t.text :text
      t.text :criteria

      t.timestamps null: false
    end
  end
end
