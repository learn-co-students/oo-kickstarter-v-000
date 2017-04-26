class Backer

attr_accessor :backed_projects, :name, :title

def initialize(name)
  @backed_projects = []
  @name = name
end

def back_project(title)
  @backed_projects << title
  title.add_backer(self)
end

end
