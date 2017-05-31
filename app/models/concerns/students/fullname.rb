module Students
  module Fullname
    extend ActiveSupport::Concern

    def full_name
      (preferred_name? ? preferred_name + " (" + first_name + ")" : first_name) + " " + last_name
    end
  end
end
