class Post < ApplicationRecord
  belongs_to :category
  belongs_to :user
  mount_uploader :file, ::FileUploader
end
