class Year < ApplicationRecord
  has_many :movies
  has_many :category
end
