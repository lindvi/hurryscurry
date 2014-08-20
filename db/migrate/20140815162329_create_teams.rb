class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
