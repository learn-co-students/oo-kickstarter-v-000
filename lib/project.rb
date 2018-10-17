class Project
  attr_accessor :backers
  attr_reader :title
   def initialize(project_name)
    @backers = []
    @title = project_name
  end
   def add_backer(backer)
    backer.backed_projects << self
    backers << backer
  end
end