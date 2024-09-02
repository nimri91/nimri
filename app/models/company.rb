class Company < ApplicationRecord
    validates :name, presence: true
    has_many :branches, dependent: :destroy
end
