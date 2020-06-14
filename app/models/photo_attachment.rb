class PhotoAttachment < ApplicationRecord
    mount_uploader :avatar, AvatarUploader
    #mount_uploader :image, ImageUploader
    belongs_to :photo
end
