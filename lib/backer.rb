class Backer
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def backed_projects
    @backed_projects
  end
  
  def back_project(project)
    project.backers << self
    self.backed_projects << project unless self.backed_projects.include?(project)
  end

end