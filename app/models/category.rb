class Category < ApplicationRecord
  has_many :posts
  belongs_to :board
end
