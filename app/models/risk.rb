class Risk < ApplicationRecord
	validates :category, presence: true
	has_many :case_risks
	has_many :cases, through: :case_risk
end
