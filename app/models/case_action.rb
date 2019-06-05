class CaseAction < ApplicationRecord
  belongs_to :case
  validates :due_date, presence: true
  validates :status, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :report, presence: true
end
