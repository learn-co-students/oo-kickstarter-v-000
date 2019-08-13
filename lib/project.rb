class Project

  attr_accessor :title, :backers

def initialize(title)
  @title = title
  @backers = []
end

def add_backer(name)
  self.backers << name
  name.backed_projects << self
end

end
