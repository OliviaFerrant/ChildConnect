class SafetyFactor < ApplicationRecord
  belongs_to :case_safety_factors
  validates :fact, presence: true
end
