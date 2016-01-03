class Backer
	def initialization(name)
		@name = name
		@backed_projects = []
	end
	def back_project(project)
		@backed_projects << project
		project.backers << self
	end
	def backed_projects
		@backed_projects
	end
end