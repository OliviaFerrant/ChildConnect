class Case < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many :case_risks
  has_many :risk, through: :case_risks
  has_many :case_actions
  # validates :start_date, presence: true
  # validates :end_date, presence: true
  validates :case_number, presence: true
  validates :family_name, presence: true
  validates :child_name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :summary, presence: true
  # validates :state, presence: true
end
