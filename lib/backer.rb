class Backer
	require 'pry'
	attr_accessor :backed_projects, :name

	def initialize(name)
		@name = name
		@backed_projects = []
	end
	def back_project(project)
		@backed_projects << project
		#binding.pry
		proj = Project.new(project)
		project.add_backer(self)
	end

end