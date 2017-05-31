class RemovePrivateResponsesFromPdp < ActiveRecord::Migration
  def change
    remove_column :pdps, :review_private, :text
    remove_column :pdps, :preview_private, :text
  end
end
