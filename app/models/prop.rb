class Prop < ApplicationRecord
  belongs_to :movie
  belongs_to :user
  has_many :bookings, dependent: :destroy
end
