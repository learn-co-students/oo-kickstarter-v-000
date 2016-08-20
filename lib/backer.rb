class Backer

	attr_accessor :name
	attr_reader :backed_projects

	def initialize(name)
		self.name = name
		@backed_projects = []
	end

	def back_project(project)
		#raise TypeError, "Object of class #{project.class} can't be added, must be of type Project" unless project.class == Project
		unless @backed_projects.any? { |backed_project| backed_project == project }
			@backed_projects << project
			project.add_backer(self)
		end
	end
	
end