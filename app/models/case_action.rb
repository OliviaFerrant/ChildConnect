class CaseAction < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :case
  # validates :due_date, presence: true
  # validates :status, presence: true
  # validates :title, presence: true
  # validates :description, presence: true
  # validates :report, presence: true
  ACTS = ["Call source & Home visit (day 1)",
    "School visit & contact other sources (day 2-5)",
    "Safety Factors Checklist due (day 7)",
    "Second home visit (day 15)",
    "Risk factors Checklist due (day 16)",
    "Third home visit (day 23)",
    "Fourth home visit (day 41)",
    "Case Closure due (day 60)",
    "Case OVERDUE (day 61+)"
  ]

end
