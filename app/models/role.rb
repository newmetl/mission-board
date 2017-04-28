class Role < ApplicationRecord
  belongs_to :user
  belongs_to :board
  validates :name, presence: true, length: { minimum: 3 }
end
