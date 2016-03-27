class Project

attr_accessor :title, :backers, :name

def initialize(title)
  @title = title
  @backers = []
  @name = name
end

def add_backer(backer)
  @backers << backer
  backer.backed_projects << self
end

end