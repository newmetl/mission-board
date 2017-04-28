class Mood < ApplicationRecord
  has_many :users
  belongs_to :board
end
