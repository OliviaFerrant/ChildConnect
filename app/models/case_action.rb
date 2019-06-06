class CaseAction < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :case
  # validates :due_date, presence: true
  # validates :status, presence: true
  # validates :title, presence: true
  # validates :description, presence: true
  # validates :report, presence: true
  ACTS = [
    "1. Call the reporter & Home visit (day 1)",
    "2. School visit & contact other sources (day 2-5)",
    "3. Safety Factors Checklist due (day 7)",
    "4. Second home visit (day 15)",
    "5. Risk factors Checklist due (day 16)",
    "6. Third home visit (day 23)",
    "7. Fourth home visit (day 41)",
    "8. Case Closure due (day 60)",
    "9.  Case OVERDUE (day 61+)"
  ]


  def priority
    if case_action.due_date - Date.today < 3
      "green"
    else
      "red"
    end
  end
end