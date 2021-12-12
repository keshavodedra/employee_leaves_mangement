class Vacation < ApplicationRecord
  belongs_to :employee
  enum vacation_type: { sick: 0, vacation: 1 }
end
