# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# 40.times do |i|
#   Book.create(
#     title: "Book Title #{i + 1}",
#     author: "Author #{('A'..'Z').to_a.sample}. Name",
#     isbn: "ISBN-#{rand(1000000000..9999999999)}",
#     published_date: Date.new(2000 + rand(0..24), rand(1..12), rand(1..28)),
#     genre: [ "Fiction", "Non-Fiction", "Mystery", "Sci-Fi", "Romance", "Biography" ].sample,
#     available: [ true, false ].sample
#   )
# end


require 'faker'

40.times do
  Book.create(
    title: Faker::Book.title,
    author: Faker::Book.author,
    isbn: Faker::Code.isbn,
    published_date: Faker::Date.between(from: '2000-01-01', to: '2024-01-01'),
    genre: Faker::Book.genre,
    available: [ true, false ].sample
  )
end
