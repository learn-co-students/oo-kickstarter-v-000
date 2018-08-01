class Backer
  
  attr_accessor :backed_projects, :name
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  def back_project(project)
    @backed_projects << project
    project.backers << self
    
    
    # b1 = Backer.new(name)
    # p1 = Project.new(name)
    # b1.back_project(p1) << @backed_projects
  end


end