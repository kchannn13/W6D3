class CreateArtworks < ActiveRecord::Migration[7.0]
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :image_url, unique: true
      t.integer :artist_id
      
      t.timestamps
    end
    add_index :artworks, :artist_id
  end
end
