class AddImageToInstructors < ActiveRecord::Migration[5.0]
  def change
    add_column :instructors, :image, :string
  end
end
