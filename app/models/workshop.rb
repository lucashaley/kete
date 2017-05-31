class Workshop < ApplicationRecord
  belongs_to :offering
  belongs_to :lab
  has_many :sessions, -> { order(day_of_week: :asc) }

  accepts_nested_attributes_for :sessions

  def full_title
    offering.title + ": " + title
  end
end
