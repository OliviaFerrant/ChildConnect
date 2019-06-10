class CasePlace < ApplicationRecord
  belongs_to :place
  belongs_to :case
end
