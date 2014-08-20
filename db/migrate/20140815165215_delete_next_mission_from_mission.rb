class DeleteNextMissionFromMission < ActiveRecord::Migration
  def change
  	remove_column :missions, :next_mission
  	remove_column :missions, :last_mission
  end
end
