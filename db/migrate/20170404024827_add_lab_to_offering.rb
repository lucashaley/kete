class AddLabToOffering < ActiveRecord::Migration[5.0]
  def change
    add_reference :offerings, :lab, foreign_key: true
  end
end
