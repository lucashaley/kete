class AddPreferredNameToGuestLecturers < ActiveRecord::Migration[5.0]
  def change
    add_column :guest_lecturers, :preferred_name, :string
  end
end
