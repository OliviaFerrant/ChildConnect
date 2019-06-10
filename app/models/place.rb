class Place < ApplicationRecord
    belongs_to :case
    validates :address, presence: true
end
