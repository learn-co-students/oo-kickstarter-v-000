

class Backer
  attr_accessor :name, :projects

  def initialize(name)
    @name = name
    @projects = []
  end

  def back_project(project)
    @projects<<project
    project.add_backer(self)
  end

  def backed_projects
    @projects
  end

end
