class ChangeOperatingSystemAndDateOfPurchase < ActiveRecord::Migration[5.0]
  def change
    rename_column :computers, :operatingSystem, :operating_system
    rename_column :computers, :dateOfPurchase, :date_of_purchase
    rename_column :computers, :softwarePackages_id, :software_packages_id
  end
end
