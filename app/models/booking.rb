class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :toothbrush
  validates :status, inclusion: { in: %w(pending available rented) }
end
