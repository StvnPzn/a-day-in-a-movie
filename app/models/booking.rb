class Booking < ApplicationRecord
  belongs_to :prop
  belongs_to :user
  enum status: { pending: 0, accepted: 1, refused: 2 }
  scope :pending, -> { where(status: "pending")}
end
