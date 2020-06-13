class PhotoAttachment < ApplicationRecord
    mount_uploader :avatar, AvatarUploader
    belongs_to :photo
end
