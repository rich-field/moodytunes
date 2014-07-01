class DropTableBadNames < ActiveRecord::Migration
  def change
    drop_table :create_users, :create_playlists
  end
end
