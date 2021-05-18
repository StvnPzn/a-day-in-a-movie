class Movie < ApplicationRecord
  has_many :props, dependent: :destroy
end
