class AddScanToPdps < ActiveRecord::Migration[5.0]
  def change
    add_column :pdps, :scan, :string
  end
end
