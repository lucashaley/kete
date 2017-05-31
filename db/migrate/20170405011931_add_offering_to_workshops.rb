class AddOfferingToWorkshops < ActiveRecord::Migration[5.0]
  def change
    add_reference :workshops, :offering, foreign_key: true
  end
end
