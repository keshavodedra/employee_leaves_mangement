class Employee < ApplicationRecord
  belongs_to :company
  has_many :vacations, dependent: :destroy
end
