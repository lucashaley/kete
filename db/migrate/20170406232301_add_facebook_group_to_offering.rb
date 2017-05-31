class AddFacebookGroupToOffering < ActiveRecord::Migration[5.0]
  def change
    add_column :offerings, :facebook_group, :string
  end
end
