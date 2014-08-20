class RenameNextMissionToNext < ActiveRecord::Migration
  def change
  	rename_column :next_missions, :next_mission_id, :next_id
  end
end
