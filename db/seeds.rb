# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create!(name: "Test", email: "test@example.com", password: "password")
User.create!(name: "Noslen", email: "noslen@example.com", password: "password", admin: true)

Category.create!(name: "fantasy")
Category.create!(name: "cyberpunk")
Category.create!(name: "horror")
Category.create!(name: "action")
Category.create!(name: "comedy")
Movie.create!(name: "Matrix", category_id: 2, image_url: "https://www.themoviedb.org/t/p/original/avHyolEHCvVgDEWaBzDODwc9tfr.jpg", year: 1999)
Movie.create!(name: "Legend", category_id: 1, image_url: "https://townsquare.media/site/442/files/2013/05/Legend.jpg?w=1200&h=0&zc=1&s=0&a=t&q=89", year: 1986)
Movie.create!(name: "The Ring", category_id: 3, image_url: "https://aussieboyreviews.com/wp-content/uploads/2020/10/ring2.jpg", year: 2002)
Movie.create!(name: "Die Hard", category_id: 4, image_url: "https://originalvintagemovieposters.com/wp-content/uploads/2019/12/DIE-HARD-8410.jpg", year: 1988)
Movie.create!(name: "BlankMan", category_id: 5, image_url: "https://media.senscritique.com/media/000019870484/source_big/Blankman.jpg", year: 1994)
