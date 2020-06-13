json.extract! photo_attachment, :id, :photo_id, :avatar, :created_at, :updated_at
json.url photo_attachment_url(photo_attachment, format: :json)
