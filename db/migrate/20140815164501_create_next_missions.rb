class CreateNextMissions < ActiveRecord::Migration
  def change
    create_table :next_missions do |t|
      t.integer :mission_id
      t.integer :next_mission_id

      t.timestamps
    end
  end
end
