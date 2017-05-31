class AddPreferredNameToInstructors < ActiveRecord::Migration[5.0]
  def change
    add_column :instructors, :preferred_name, :string
  end
end
