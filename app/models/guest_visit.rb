class GuestVisit < ApplicationRecord
  belongs_to :guest_lecturer
  belongs_to :course

  accepts_nested_attributes_for :guest_lecturer, reject_if: proc { |attributes| attributes[:first_name].blank? }
end
