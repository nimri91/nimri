class FinancialPackage < ApplicationRecord
  belongs_to :employee
  validates :from_date, presence: true, comparison: { greater_than_or_equal_to: Date.new(2023, 1, 1) }
  validates :to_date, presence: true, comparison: { greater_than: :from_date }
  validates :amount, numericality: { greater_than_or_equal_to: 200 }
end
