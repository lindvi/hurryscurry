class AddBlockingToMission < ActiveRecord::Migration
  def change
    add_column :missions, :blocking, :boolean
  end
end
