class Project
	attr_reader :title, :backers

	def initialize(title)
		@title = title
		@backers = []
	end

	def add_backer(baker)
		backers << baker
		baker.backed_projects << self
	end
end