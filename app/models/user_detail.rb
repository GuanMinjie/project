class UserDetail < ApplicationRecord
  belongs_to :user  ,  inverse_of: :detail
  validates  :name , presence: true
  validates  :gender, presence: true
  validates  :age, presence: true
end
