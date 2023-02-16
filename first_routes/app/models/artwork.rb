# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  image_url  :string           not null
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  artist_id  :integer          not null
#
# Indexes
#
#  index_artworks_on_artist_id            (artist_id)
#  index_artworks_on_artist_id_and_title  (artist_id,title) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (artist_id => users.id)
#
class Artwork < ApplicationRecord
  validates :title, :image_url, :artist_id, presence: true, uniqueness: {scope: :title}

  belongs_to :artist,
  inverse_of: :users

  has_many :artworks,
  primary_key: :id,
  foreign_key: :artwork_id,
  class_name: :ArtworkShare,
  inverse_of: :artwork,
  dependent: :destroy

  has_many :shared_viewers,
  through: :artworks,
  source: :viewer 

  has_many :comments,
  primary_key: :id,
  foreign_key: :artwork_id,
  class_name: :Comment,
  dependent: :destroy

end
