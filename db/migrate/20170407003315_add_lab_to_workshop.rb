class AddLabToWorkshop < ActiveRecord::Migration[5.0]
  def change
    add_reference :workshops, :lab, foreign_key: true
  end
end
