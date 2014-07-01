class DropTable < ActiveRecord::Migration
  def change
    drop_table :create_moods
  end
end
