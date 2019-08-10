class Backer

  attr_accessor :name, :backed_projects
#takes a name on initialization
  def initialize(name)
    @name = name
    @backed_projects = []
  end
#accepts a Project as an argument and stores it in a backed_projects array
  def back_project(project)
    @backed_projects << project
#also adds the backer to the project's backers array    
    project.backers << self
  end
end
