class AddProfileToOutcomes < ActiveRecord::Migration
  def change
    add_column :outcomes, :profile, :string
  end
end
