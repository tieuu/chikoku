class Calendar < ApplicationRecord
  belongs_to :user, through: :shift
  belongs_to :leader, class_name: 'User', foreign_key: :leader_id
  has_many :time_slots
end
