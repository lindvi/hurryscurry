class AddActiveToGameSession < ActiveRecord::Migration
  def change
    add_column :game_sessions, :active, :boolean, :default => false
  end
end
