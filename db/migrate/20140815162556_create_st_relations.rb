class CreateStRelations < ActiveRecord::Migration
  def change
    create_table :st_relations do |t|
      t.integer :game_session_id
      t.integer :team_id

      t.timestamps
    end
  end
end
