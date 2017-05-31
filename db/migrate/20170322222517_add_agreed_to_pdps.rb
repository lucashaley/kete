class AddAgreedToPdps < ActiveRecord::Migration
  def change
    add_column :pdps, :agreed, :boolean
  end
end
