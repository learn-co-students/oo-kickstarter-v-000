class Project

attr_accessor :title, :backers

def initialize(title)
  @title=title
  @backers = []
end

def add_backer(backer)
  @backers << backer
  backer.backed_projects << self
end


end
# When a backer has added a project to it's list of backed projects, that 
# project should also add the backer to it's list of backers. Refer back to 
# the Code Along about Collaborating Objects.