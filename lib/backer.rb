#takes a name on initialization
#####back_project
#accepts a Project as an argument and stores it in a backed_projects array  
#####More Advanced back_project                                                          
#also adds the backer to the project's backers array                                                                                  

class Backer
  attr_accessor :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def self.back_project
    @backed_projects
  end

  def back_project(project)
    @backed_projects << project
    project.backers << self
  end
end