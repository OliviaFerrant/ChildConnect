class Risk < ApplicationRecord
	validates :type, presence: true
	has_many :caserisks
	has_many :cases, through: :caserisk
end
