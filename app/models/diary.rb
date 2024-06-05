class Diary < ApplicationRecord
  has_one_attached :image
  belongs_to :user

  def get_image(width, height)
    unless profile_image.attached?
      "images.png"
    else
     image.variant(resize_to_limit: [width, height]).processed
    end
  end
end
