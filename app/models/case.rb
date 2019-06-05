class Case < ApplicationRecord
  belongs_to :user
  has_many :caserisks
  has_many :risk, through: :caserisk
  validates :start_date, presence: true
  validates :end_date, presence: true
  has_many :actions
  validates :family_name, presence: true
  validates :child_name, presence: true
  validates :address, presence: true
  # validates :state, presence: true
end
