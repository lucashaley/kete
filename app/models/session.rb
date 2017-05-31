class Session < ApplicationRecord
  belongs_to :workshop
  belongs_to :lab

  enum day_of_week: [ :Monday, :Tuesday, :Wednesday, :Thursday, :Friday, :Saturday, :Sunday ]
end
