class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.text :name
      t.text :description
      t.integer :difficulty
      t.integer :exp
      t.integer :next_mission
      t.integer :last_mission

      t.timestamps
    end
  end
end
