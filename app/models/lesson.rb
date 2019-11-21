class Lesson < ApplicationRecord
  belongs_to :user
  validates :speciality, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
