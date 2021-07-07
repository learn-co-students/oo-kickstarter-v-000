class Backer

  attr_accessor :name

  @@backed_projects = []

  def initialize(name)
    @name = name
  end

  def back_project(project)
    @@backed_projects << project
    project.add_backer(self)
  end

  def backed_projects
    @@backed_projects
  end

end
