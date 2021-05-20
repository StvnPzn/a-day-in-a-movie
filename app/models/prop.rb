class Prop < ApplicationRecord
  belongs_to :movie
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
end
