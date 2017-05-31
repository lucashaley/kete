class ChangeMasseyId < ActiveRecord::Migration
  def change
    rename_column :students, :massey_id, :massey_identification
  end
end
