class CreatePhotoAttachments < ActiveRecord::Migration[6.0]
  def change
    create_table :photo_attachments do |t|
      t.integer :photo_id
      t.string :avatar

      t.timestamps
    end
  end
end
