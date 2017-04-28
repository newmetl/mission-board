class User < ApplicationRecord
  has_and_belongs_to_many :todos
  has_and_belongs_to_many :boards
  belongs_to :mood, optional: true
  mount_uploader :photo, ::FileUploader
  validates :name, presence: true, length: { minimum: 3 }
end
