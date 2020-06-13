class Photo < ApplicationRecord
    validates :title, :description, :image_file_name, :image_content_type, :image_file_size, :author, presence: true

    #validates_attachment_content_type :image_content_type, :content_type => %w(image/jpeg image/jpg image/png image/gif)

end
