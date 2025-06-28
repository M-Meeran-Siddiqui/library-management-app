class Book < ApplicationRecord
  validates :title, :author, :isbn, :published_date, :genre, presence: true
  validates :available, inclusion: { in: [ true, false ] }
end
