class Backer

  attr_accessor :name, :backed_projects, :project, :backer

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    project.backer = self unless project.backer == self
    project.backers << project.backer
  end

end
