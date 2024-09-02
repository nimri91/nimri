class Branch < ApplicationRecord
  belongs_to :company
  has_one :attendance_setup, dependent: :destroy
  has_many :employees, dependent: :destroy
  has_many :rooms, dependent: :destroy
  validates :name, presence: true
end
