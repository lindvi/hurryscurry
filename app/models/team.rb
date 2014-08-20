# == Schema Information
#
# Table name: teams
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  image       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Team < ActiveRecord::Base

	has_many :st_relations
	has_many :game_sessions, through: :st_relations

end
