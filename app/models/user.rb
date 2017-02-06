class User < ApplicationRecord
  has_and_belongs_to_many :todos
  mount_uploader :photo, ::FileUploader
  validates :name, presence: true, length: { minimum: 3 }
end
