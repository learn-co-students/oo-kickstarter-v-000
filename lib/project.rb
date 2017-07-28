class Project
	require 'pry'
	attr_accessor :backers, :title

	def initialize(title)
		@title = title
		@backers = []
	end

	def add_backer(backer)

		@backers << backer
		backer.backed_projects << self
		#binding.pry
	end
end