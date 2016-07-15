class Project

	attr_accessor :title, :backers


	def initialize(title)
		@title = title
		@backers = []
	end

	def add_backer(backer)
		@backers << backer
		if backer.backed_projects.detect { |project| project.title.include?(backer) == nil}
			backer.back_project(self)
		end
	end

end