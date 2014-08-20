class AddGroupToMission < ActiveRecord::Migration
  def change
    add_column :missions, :group, :integer
  end
end
