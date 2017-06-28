class AddAbbreviationToProgrammes < ActiveRecord::Migration[5.0]
  def change
    add_column :programmes, :abbreviation, :string
  end
end
