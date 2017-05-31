class AddOfferingToGuestVisits < ActiveRecord::Migration[5.0]
  def change
    add_reference :guest_visits, :offering, foreign_key: true
  end
end
