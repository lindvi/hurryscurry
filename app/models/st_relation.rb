# == Schema Information
#
# Table name: st_relations
#
#  id              :integer          not null, primary key
#  game_session_id :integer
#  team_id         :integer
#  created_at      :datetime
#  updated_at      :datetime
#

class StRelation < ActiveRecord::Base

	belongs_to :game_session
	belongs_to :team

end
