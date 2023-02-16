class Artwork < ApplicationRecord
  validates :image_url, :artist_id, presence: true, uniqueness: {scope: :title}
end