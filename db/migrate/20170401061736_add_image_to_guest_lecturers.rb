class AddImageToGuestLecturers < ActiveRecord::Migration[5.0]
  def change
    add_column :guest_lecturers, :image, :string
  end
end
