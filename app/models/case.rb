class Case < ApplicationRecord
  belongs_to :user
  has_many :actions
  # validates :start_date, presence: true
  # validates :end_date, presence: true
  validates :family_name, presence: true
  validates :child_name, presence: true
  validates :address, presence: true
  # validates :state, presence: true
end
