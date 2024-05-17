class Attendance < ApplicationRecord
  belongs_to :user

  validates :date, presence: true
  validates :status, presence: true, inclusion: { in: %w[present absent] }

  validates :checkin, presence: true, if: -> { status == 'present' }
  validates :checkout, presence: true, if: -> { status == 'present' }
end
