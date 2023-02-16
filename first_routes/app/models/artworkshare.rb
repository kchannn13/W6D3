class ArtworkShare < ApplicationRecord
   belongs_to :artwork,
   # primary_key: :id,
   foreign_key: :artwork_id,
   # class_name: :Artwork
   inverse_of: :artworks

   belongs_to :viewer,
  
   foreign_key: :viewer_id,
   inverse_of: :artist

end