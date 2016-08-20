class Project

	attr_accessor :title
	attr_reader :backers
	
	def initialize(title)
		self.title = title
		@backers = []
	end

	def add_backer(backer)
		#raise TypeError, "Object of class #{project.class} can't be added, must be of type Backer" unless project.class == Project
		unless @backers.any? { |backers| backers == backer }
			@backers << backer
			backer.back_project(self)
		end
	end
	
end