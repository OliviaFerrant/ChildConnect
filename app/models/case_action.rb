class CaseAction < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :case
  # validates :due_date, presence: true
  # validates :status, presence: true
  # validates :title, presence: true
  # validates :description, presence: true
  # validates :report, presence: true
  ACTS = [{title: "Call source & Home visit (day 1)", due_date: Date.today},
    {title: "School visit & contact other sources (day 2-5)", due_date: Date.today + 3},
    {title: "Safety Factors Checklist due (day 7)", due_date: Date.today + 7},
    {title: "Second home visit (day 15)", due_date: Date.today + 15},
    {title: "Risk factors Checklist due (day 16)", due_date: Date.today + 16},
    {title: "Third home visit (day 23)", due_date: Date.today + 23},
    {title: "Fourth home visit (day 41)", due_date: Date.today + 41},
    {title: "Case Closure due (day 60)", due_date: Date.today + 60}
  ]
  # DUE = [1, 2, 7, 15, 16, 23, 41, 60, 61]
end
