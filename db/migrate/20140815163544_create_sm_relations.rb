class CreateSmRelations < ActiveRecord::Migration
  def change
    create_table :sm_relations do |t|
      t.integer :game_session_id
      t.integer :mission_id

      t.timestamps
    end
  end
end
