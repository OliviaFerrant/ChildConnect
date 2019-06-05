class SafetyFactor < ApplicationRecord
  has_many :case_safety_factors
  validates :fact, presence: true
end
