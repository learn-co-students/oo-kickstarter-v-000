class Project

attr_accessor :title, :backers

@@backed_projects = []

def initialize(title)
  @title = title
  @backers = []
end

def add_backer(backer)
   @backers << backer
   backer.backed_projects << self
end

def self.backed_projects
  @@backed_projects
end

end
