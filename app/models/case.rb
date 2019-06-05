class Case < ApplicationRecord
  belongs_to :user
  has_many :caserisks
  has_many :risk, through: :caserisk
  # validates :end_date, presence: true
  has_many :actions
  validates :start_date, presence: true
  validates :case_number, presence: true
  validates :family_name, presence: true
  validates :child_name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :summary, presence: true
  # validates :state, presence: true
end
