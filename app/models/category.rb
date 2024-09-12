class Category < ApplicationRecord
  has_many :movies
  has_many :years
end
