class Reservation < ApplicationRecord
  belongs_to :user, optional: true
  validates :start_time, presence: true
  validates :end_time, presence: true
end
