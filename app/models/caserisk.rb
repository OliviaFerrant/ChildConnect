class Caserisk < ApplicationRecord
  belongs_to :case
  belongs_to :risk
end
