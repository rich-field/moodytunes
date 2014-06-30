class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.string :playlist_1
      t.string :playlist_2
      t.string :playlist_3

      t.timestamps
    end
  end
end
