class SafetyFactor < ApplicationRecord
  has_many :case_safety_factors, dependent: :destroy
  validates :fact, presence: true
end
