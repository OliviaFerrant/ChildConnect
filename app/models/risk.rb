class Risk < ApplicationRecord
	validates :category, presence: true
	has_many :case_risks, dependent: :destroy
	has_many :cases, through: :case_risk, dependent: :destroy
end
