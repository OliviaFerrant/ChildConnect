class CaseRisk < ApplicationRecord
  belongs_to :case
  belongs_to :risk
end
