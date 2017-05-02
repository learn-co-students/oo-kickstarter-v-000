class Project
	attr_accessor :title, :backers

	def initialize(title)
		@title = title		
	end

	def add_backer(backer)
		@backers = []
		@backers << backer
		backer.back_project(self)
	end	

	#def backer=(backer)
	#	@backer = backer
	#end
end
