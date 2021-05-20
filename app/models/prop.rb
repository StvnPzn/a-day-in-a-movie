class Prop < ApplicationRecord
  belongs_to :movie
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo


  # def photo
  #   @props = Prop.all
  #   @props.each do |prop| 
  #     unless prop.photo.attached?
  #     prop.photo.attach(
  #         io: File.open(Rails.root.join('app', 'assets', 'images', 'no_image_available.jpg')),
  
  #         filename: 'no_image_available.jpg', content_type: 'image/jpg'
  #       )
  #     end
  #   end
  # end

end
