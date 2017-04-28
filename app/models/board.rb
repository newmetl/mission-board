class Board < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :moods
  has_many :roles
  has_many :categories
  has_many :todos
end
