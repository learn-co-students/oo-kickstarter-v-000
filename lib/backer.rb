class Backer

	attr_reader :name
	attr_accessor :backed_projects

	def initialize(name)
		@name = name
		@backed_projects = []
	end

	def back_project(project)
		if project.instance_of?(Project) == false
			raise ArgumentError.new("Argument was not a Project")
		else
			self.backed_projects << project
			project.backers << self
		end
	end

end
