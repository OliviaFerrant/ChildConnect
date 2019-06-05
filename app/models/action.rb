class Action < ApplicationRecord
  belongs_to :case
  validates :due_date, presence: true
  validates :status, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :report, presence: true

ACTIONS = ["Call reporter", "First Home visit", "School visit", "Safety Factors Checklist", "Second home visit", "Risk factors Checklist", "Third home visit", "Fourth home visit", "Case Closure due"]
end
