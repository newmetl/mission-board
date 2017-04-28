class Todo < ApplicationRecord
  has_and_belongs_to_many :users
  belongs_to :board
end
