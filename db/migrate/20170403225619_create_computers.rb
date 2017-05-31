class CreateComputers < ActiveRecord::Migration[5.0]
  def change
    create_table :computers do |t|
      t.string :model
      t.string :operatingSystem
      t.date :dateOfPurchase
      t.references :lab
      t.references :softwarePackages, foreign_key: true
    end
  end
end
