class CreateAlbumTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :album_types do |t|
      t.string :albumname

      t.timestamps
    end
  end
end
