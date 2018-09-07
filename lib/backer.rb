class Backer
  #Attributes:
  attr_accessor :name, :backed_projects
  
  #Class Methods:
  
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  #Instance Methods:
  def back_project(project)
    @backed_projects << project
    project.backers << self
  end
  
end