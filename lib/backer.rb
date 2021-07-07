class Backer
  attr_accessor :name, :backed_projects, :project

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    backed_projects << project   #added project to backers list of projects array
    project.add_backer(self)     #added backer to projects list of backers
  end
end
