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
    #@case = Case.all
    case_actions.where(status: nil).order(:due_date).first
    
    # 1 - get all my case_actions for this case
    # 2 - sort them by due date
    # 3 - get the closest due date from today, that is in the future, and is not set as finish
  end

  def priority_action
    priority_next_action = next_action
    if !priority_next_action
      return ""
    else
      priority_next_action.title + " | Deadline:" + priority_next_action.due_date.to_s
    end

  end
    
  def my_priority
    next_case_action = next_action
    if !next_case_action
      return 0
    end
    if next_case_action.due_date - Date.today <= 1
      return 2
    elsif next_case_action.due_date - Date.today <= 3
      return 1
    else
      return 0
    end
    
    # 1 - find the next action which will happen the sooner
    # 2 - evaluate the priority of the action from 0 to 2
    # 3 - return the priority
  end

  def priority_color
    COLORS[my_priority]
  end
end
