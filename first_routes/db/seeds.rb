# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

    User.destroy_all
    Artwork.destroy_all

    user1 = User.create!(username: "Olive")
    user2 = User.create!(username: "Huston")
    user3 = User.create!(username: "David")
    user4 = User.create!(username: "Tyrone")
    user5 = User.create!(username: "Marlene")
    user6 = User.create!(username: "Oswaldo")
    user7 = User.create!(username: "Meadow")
    user8 = User.create!(username: "Philip")

    Artwork.create!(title: "Only Cloud", image_url:  "onlycloud.com" , artist_id: user1.id)
    Artwork.create!(title: "The Man of the Time", image_url: "themanofthetime.com" , artist_id: user2.id)
    Artwork.create!(title: "Lovely Princess", image_url:  "lovelyprincess.com", artist_id: user3.id)
    Artwork.create!(title: "The Gift of the Flame", image_url: "TheGiftoftheFlame.com" , artist_id: user4.id)
    Artwork.create!(title: "Only Wave", image_url:  "OnlyWave.com", artist_id: user5.id)
    Artwork.create!(title: "The Blue Storm", image_url:  "TheBlueStorm.com", artist_id: user6.id)
    Artwork.create!(title: "Missing Winter", image_url:  "MissingWinter.com", artist_id: user7.id)
    Artwork.create!(title: "The Mssing Doors", image_url:  "TheMssingDoors.com", artist_id: user8.id)