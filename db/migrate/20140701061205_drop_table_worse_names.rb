class DropTableWorseNames < ActiveRecord::Migration
  def change
    drop_table :create_playlists
  end
end
