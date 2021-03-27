class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :calendars, as: :leader
  has_many :shifts
  has_many :calendars, through: :shift

  validates :username, presence: true, uniqueness: :true
end
