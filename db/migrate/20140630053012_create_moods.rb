class CreateMoods < ActiveRecord::Migration
  def change
    create_table :moods do |t|
      t.string :happy
      t.string :sad
      t.string :rage
      t.string :anger
      t.string :hysteria
      t.string :boredom
      t.string :pensive
      t.string :melanholy
      t.string :elated
      t.string :tired
      t.string :frustrated
      t.string :party
      t.string :hateful
      t.string :drunk
      t.string :high
      t.string :relaxed

      t.timestamps
    end
  end
end
