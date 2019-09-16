class About < ApplicationRecord
  mount_uploader :image, ImageUploader

  ATTRS = %i(title description content image remove_image image_cache)
end
