# == Schema Information
#
# Table name: missions
#
#  id          :integer          not null, primary key
#  name        :text
#  description :text
#  difficulty  :integer
#  exp         :integer
#  created_at  :datetime
#  updated_at  :datetime
#  blocking    :boolean
#

class Mission < ActiveRecord::Base

	has_many :sm_relations
	has_many :game_sessions, through: :sm_relations

	has_many :next_missions
	has_many :missions, through: :next_missions, foreign_key: "next_id"


end
