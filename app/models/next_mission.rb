# == Schema Information
#
# Table name: next_missions
#
#  id              :integer          not null, primary key
#  mission_id      :integer
#  next_mission_id :integer
#  created_at      :datetime
#  updated_at      :datetime
#

class NextMission < ActiveRecord::Base

	belongs_to :mission
	belongs_to :next, class_name: "Mission"
end
