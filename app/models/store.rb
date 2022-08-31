class Store < ApplicationRecord
  mount_uploader :image, FileUploader
end
