class Backer
  attr_accessor :name
  attr_reader :backed_projects

  def initialize(name = nil)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    project.backers.push(self)
  end
  
end