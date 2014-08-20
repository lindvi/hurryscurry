# == Schema Information
#
# Table name: game_sessions
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class GameSession < ActiveRecord::Base

	has_many :st_relations
	has_many :teams, through: :st_relations


end
