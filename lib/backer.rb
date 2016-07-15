require 'pry'

class Backer

	attr_accessor :name, :backed_projects

	def initialize(name)
		@name = name
		@backed_projects = []
	end

	def back_project(project)
		@backed_projects << project
		if project.backers.detect { |backer| backer.name.include?(self) == nil}
			project.add_backer(self)
		end
	end

	binding.pry

end