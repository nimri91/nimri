class Termination < ApplicationRecord
  belongs_to :employee
  validates :date, presence: true
end
