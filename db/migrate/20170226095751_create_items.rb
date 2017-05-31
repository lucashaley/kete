class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :lesson, index: true, foreign_key: true
      t.integer :order
      t.string :title
      t.text :detail
      t.text :resources
      t.integer :duration
      t.integer :type

      t.timestamps null: false
    end
  end
end
