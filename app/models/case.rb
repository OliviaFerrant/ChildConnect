class Case < ApplicationRecord
  # belongs_to :user
  has_many :case_risks, dependent: :destroy
  has_many :risk, through: :case_risks
  has_many :case_actions, dependent: :destroy
  has_many :titles, through: :case_actions
  # validates :start_date, presence: true
  # validates :end_date, presence: true
  # validates :state, presence: true
  validates :case_number, presence: true
  validates :family_name, presence: true
  validates :child_name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :summary, presence: true


  COLORS = ["bg-light", "bg-warning", "bg-danger"]

  def next_action
    @case_action = CaseAction.where(case_id: @case).order(due_date: :desc)
    # 1 - get all my case_actions for this case
    # 2 - sort them by due date
    # 3 - get the closest due date from today, that is in the future, and is not set as finish
  end

  def my_priority
    # 1 - find the next action which will happen the sooner
    # 2 - evaluate the priority of the action from 0 to 2
    # 3 - return the priority
    rand(0..2)
  end

  def priority_color
    COLORS[my_priority]
  end
end
