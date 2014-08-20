class RenameStartingTostarting < ActiveRecord::Migration
  def change
  	rename_column :missions, :Starting, :starting
  	change_column :missions, :starting, :boolean, :default => false
  end
end
