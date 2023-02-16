class UpdateComments < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :users, foreign_key: true
    add_reference :comments, :artworks, foreign_key: true
  end
end
