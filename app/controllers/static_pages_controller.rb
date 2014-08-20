class StaticPagesController < ApplicationController

	def home
	end


	def status
		@missions = Mission.all
		@teams = Team.all
	end

end
