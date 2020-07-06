class AlbumType < ApplicationRecord
    validate :albumname
    has_many :photos
end
