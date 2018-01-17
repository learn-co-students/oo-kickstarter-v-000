class Backer

  attr_accessor :backed_projects, :name

  def initialize (name)
    @name = name
    @backed_projects = []
  end
  
  def back_project(project) #because the argument is a project object defined in project.rb the backer and project objects are relating
    @backed_projects << project
    project.backers << self
    
    
  end

end

