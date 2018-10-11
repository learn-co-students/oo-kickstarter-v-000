class Backer
  
  attr_accessor :backed_projects, :name, :project
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  def back_project(new_project)
  @backed_projects << new_project
  new_project.backers << self 
end
  
end