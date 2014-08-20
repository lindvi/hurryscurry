class CreateStmRelations < ActiveRecord::Migration
  def change
    create_table :stm_relations do |t|
      t.integer :st_relation_id
      t.integer :mission_id
      t.boolean :completed

      t.timestamps
    end
  end
end
