class Favorite < ApplicationRecord
  has_many :movies
  has_many :category, through: :movie
  belongs_to :user
  belongs_to :movie
end
