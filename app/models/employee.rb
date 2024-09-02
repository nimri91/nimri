class Employee < ApplicationRecord
  belongs_to :branch
  has_many :financial_packages, dependent: :destroy
  has_one :termination, dependent: :destroy
  has_many :employee_rooms, dependent: :destroy
  has_many :rooms, through: :employee_rooms

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :hire_date, presence: true
  validates :employment_number, presence: true, uniqueness: { scope: :branch_id }
end
