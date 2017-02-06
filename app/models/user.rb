class User < ApplicationRecord
  mount_uploader :photo, FileUploader
  validates :name, presence: true, length: { minimum: 3 }
end
