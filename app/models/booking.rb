class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :toothbrush
  validates :status, exclusion: { in: ["booked"] }, on: :create
  validate :start_date_cannot_be_in_the_past
  validate :end_date_cannot_be_before_start_date
  validate :end_date_cannot_be_in_the_past
  validates :start_date, :end_date, presence: true

  def start_date_cannot_be_in_the_past
    if start_date.present? && start_date < Date.today
      errors.add(:start_date, "Start date cannot be in the past")
    end
  end

  def end_date_cannot_be_before_start_date
    if end_date.present? && end_date < start_date
      errors.add(:end_date, "End date cannot be before Start date")
    end
  end

  def end_date_cannot_be_in_the_past
    if end_date.present? && end_date < Date.today
      errors.add(:end_date, "End date cannot be in the past")
    end
  end
end
