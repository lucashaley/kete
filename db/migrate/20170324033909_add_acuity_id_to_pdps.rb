class AddAcuityIdToPdps < ActiveRecord::Migration
  def change
    add_column :pdps, :acuity_id, :integer
  end
end
