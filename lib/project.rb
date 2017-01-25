class Project
attr_accessor :title, :backers

def initialize(title)
  @title = title
  @backers = []
end

def add_backer(name)
@backers << name
obj = Backer.new(name)
obj.backed_projects << self
end

end
