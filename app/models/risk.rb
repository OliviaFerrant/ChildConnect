class Risk < ApplicationRecord
	validates :category, presence: true
	has_many :case_risks, dependent: :destroy
end
