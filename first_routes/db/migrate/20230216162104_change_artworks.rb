class ChangeArtworks < ActiveRecord::Migration[7.0]
  def change
    change_column_null :artworks, :title, false
    change_column_null :artworks, :image_url, false
    change_column_null :artworks, :artist_id, false
  end
end
