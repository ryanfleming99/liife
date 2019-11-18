class User < ApplicationRecord
  has_many :lessons
  has_many :bookings

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :second_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
