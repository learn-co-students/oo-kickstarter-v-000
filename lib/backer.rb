class Backer
attr_accessor :name, :title, :backed_projects

def initialize(name, title = nil)
  @name = name
  @title = title 
  @backed_projects = []
end# of initialize 


def back_project(project)
  @backed_projects << project
  project.backers << self 
end# of back_project


end# of class 