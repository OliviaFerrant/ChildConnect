class CaseSafetyFactor < ApplicationRecord
  belongs_to :case
  belongs_to :safety_factor
end
