class AddStartingToMission < ActiveRecord::Migration
  def change
    add_column :missions, :Starting, :boolean
  end
end
