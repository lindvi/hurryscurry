# == Schema Information
#
# Table name: sm_relations
#
#  id              :integer          not null, primary key
#  game_session_id :integer
#  mission_id      :integer
#  created_at      :datetime
#  updated_at      :datetime
#

class SmRelation < ActiveRecord::Base

	belongs_to :game_session
	belongs_to :mission

end
