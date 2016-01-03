class Project
	def initialization(title)
		@title = title
		@backers = []
	end
	def add_backer(backer)
		@backers << backer
		backer.backed_projects << self
	end
	def backers
		@backers
	end
end