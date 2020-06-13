json.extract! photo, :id, :title, :description, :image_file_name, :image_content_type, :image_file_size, :author, :created_at, :updated_at
json.url photo_url(photo, format: :json)
